studentms/
│
├── includes/
│   ├── config.php            # Database connection
│   ├── header.php            # Header HTML
│   ├── footer.php            # Footer HTML
│   ├── functions.php         # Common PHP functions (optional)
│
├── images/
│   ├── logo.png
│
├── admin/
│   ├── index.php             # Admin dashboard
│   ├── manage_staff.php      # Admin manages staff accounts
│   ├── add_staff.php
│   ├── edit_staff.php
│   ├── manage_results.php    # Admin can manage all results
│   ├── publish_results.php   # Admin publishes results
│   ├── manage_fees.php       # Admin manages fees
│   ├── manage_attendance.php # Admin can oversee attendance
│   └── manage_courses.php    # Optional: Admin manages courses
│
├── staff/
│   ├── index.php             # Staff dashboard
│   ├── staff-sidebar.php
│   ├── staff-topbar.php
│   ├── manage_students.php   # Staff manages student accounts
│   ├── add_student.php
│   ├── edit_student.php
│   ├── enter_marks.php       # Staff enters marks
│   ├── view_results.php      # Staff views results of students
│   ├── manage_assignments.php # Staff manages assignments
│   ├── record_attendance.php  # Staff marks student attendance
│   └── manage_fees.php        # Staff can record fees payments
│
├── student/
│   ├── index.php             # Student dashboard
│   ├── submit_assignment.php
│   ├── view_results.php      # Students view their own results
│   ├── view_attendance.php   # Students view their attendance
│   └── view_fees.php         # Students view their fees status
│
├── login.php
├── logout.php
└── styles.css




                   ┌─────────────┐
                   │    Admin    │
                   └─────┬──────┘
                         │
        ┌────────────────┼─────────────────┐
        │                │                 │
  Manage Staff      Manage Results     Manage Fees & Attendance
        │                │                 │
        │                │                 │
        ▼                ▼                 ▼
   ┌─────────┐      ┌─────────┐      ┌───────────────┐
   │  Staff  │─────▶│ Students│◀─────│ Student Data  │
   └─────────┘      └─────────┘      └───────────────┘
        │
        │
        ▼
   Manage Students
   Enter Marks
   Manage Assignments
   Record Attendance
   Record Fees

        ▼
   ┌─────────┐
   │ Student │
   └─────────┘
        │
        ▼
   View Results
   View Attendance
   View Fees
   Submit Assignments
