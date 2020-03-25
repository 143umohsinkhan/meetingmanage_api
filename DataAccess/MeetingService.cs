using API.Interface;
using API.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace API.DataAccess
{
    public class MeetingService : RepositoryService<Meetings>, IMeetingService
    {
        public MeetingService(modelContext modelContext) : base(modelContext)
        {
        }

        public Meetings GetByID(int Id)
        {
            Meetings meeting = RepoContext.Meetings.FirstOrDefault(x => x.Id == Id);
            meeting.AttendeesIds = RepoContext.AttendeeMeeting.Where(x => x.MeetingId == Id).Select(attendee_meeting=> attendee_meeting.AttendeeId).ToList();
            if (meeting != null)
            {
                RepoContext.Entry(meeting).State = EntityState.Detached;
                return meeting;
            }
            return null;
        }

        public override IList<Meetings> GetAll()
        {
            List<Meetings> meetings = RepoContext.Meetings.AsNoTracking().ToList();
            return meetings.Select(x => new Meetings
            {
                AttedeesNames = string.Join(',', RepoContext.AttendeeMeeting.Where(meeting => meeting.MeetingId == x.Id).Select(attendee => attendee.Attendee.Name)),
                Agenda = x.Agenda,
                Subject = x.Subject,
                Id = x.Id,
                CreatedBy = x.CreatedBy,
                DateTime = x.DateTime
            }).ToList();
        }

        public override bool Add(Meetings obj)
        {
            obj.AttendeeMeeting = obj.AttendeesIds.Select(id => new AttendeeMeeting { AttendeeId = id, MeetingId = obj.Id }).ToList();
            return base.Add(obj);
        }

        public bool Update(Meetings mtng)
        {
            Meetings oldMeetingdata = GetByID(mtng.Id);

            if (oldMeetingdata != null)
            {
                RepoContext.AttendeeMeeting.RemoveRange(RepoContext.AttendeeMeeting.Where(x => x.MeetingId == oldMeetingdata.Id));
                RepoContext.AttendeeMeeting.AddRange(mtng.AttendeesIds.Select(id => new AttendeeMeeting { AttendeeId = id, MeetingId = mtng.Id }));
                oldMeetingdata.Subject = mtng.Subject;
                oldMeetingdata.UpdateDate = DateTime.Now;
                oldMeetingdata.Agenda = mtng.Agenda;
                oldMeetingdata.DateTime = mtng.DateTime;
            }

            RepoContext.Entry(oldMeetingdata).State = EntityState.Modified;
            RepoContext.SaveChanges();

            return true;
        }
    }
}
