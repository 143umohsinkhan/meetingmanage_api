using API.Dto;
using API.Interface;
using API.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class MeetingController : Controller
    {
        IMeetingService _meetingService;
        IAttendeeService _attendeeService;
        modelContext modelContext;

        public MeetingController(IMeetingService meetingService, IAttendeeService attendeeService, modelContext modelContext)
        {
            _meetingService = meetingService;
            _attendeeService = attendeeService;
            this.modelContext = modelContext;
        }

        [HttpGet]
        public Task<IList<Meetings>> Get()
        {
            return Task.FromResult(_meetingService.GetAll());
        }

        [HttpGet("{id}")]
        public Task<Meetings> Get(int id)
        {
            return Task.FromResult(_meetingService.GetByID(id));
        }

        [HttpPost]
        public Task<bool> Post([FromBody] MeetingDto value)
        {
            Meetings meetings = new Meetings
            {
                Agenda = value.Agenda,
                Subject = value.Subject,
                DateTime = value.MeetingTime,
                CreatedBy = value.UserID,
                UpdateDate = DateTime.Now,
                AttendeesIds = value.Attendees
            };
            return Task.FromResult(_meetingService.Add(meetings));
        }

        [HttpPut("{id}")]
        public Task<bool> Put(int id, [FromBody] MeetingDto value)
        {
            Meetings meetings = new Meetings
            {
                Agenda = value.Agenda,
                Subject = value.Subject,
                DateTime = value.MeetingTime,
                CreatedBy = 1,//value.UserId,
                UpdateDate = DateTime.Now,
                AttendeesIds = value.Attendees,
                Id = id
            };
            return Task.FromResult(_meetingService.Update(meetings));
        }

        [HttpGet]
        [Route("GetAllAttendees")]
        public Task<IList<Attendees>> GetAllAttendees()
        {
            return Task.FromResult(_attendeeService.GetAll());
        }
    }
}
