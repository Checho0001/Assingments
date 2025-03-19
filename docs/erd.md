:::mermaid

erDiagram

    STUDENTS {
        int student_id PK
        string name
    }

    ENROLLMENTS {
        int enrollment_id PK
        int student_id FK
        int course_id FK
        date enrollment_date
        date last_login_date
        boolean active
    }

    COURSES {
        int course_id PK
        int instructor_id FK
        string title
        string category
    }

    PAYMENT_RECORDS {
        int payment_id PK
        int student_id FK
        int subscription_id FK
        int enrollment_id FK
        float price
        string methods
        date payment_date
    }

    SUBSCRIPTIONS {
        int subscription_id PK
        int student_id FK
        int course_id FK
        String type_of_subscription
        date start_date
        date end_date
        date expired_date
    }

    INSTRUCTORS {
        int instructor_id PK
        string name
        string email
    }

    MODULES {
        int module_id PK
        int course_id FK
        string title
    }

    ASSESSMENTS {
        int assessment_id PK
        int module_id FK
        int student_id FK
        %% int submissions_id FK
        float grade
        float expected_grade
        date deadline_date
        %% HOW TO FIND THE FINAL ASSESSMENT
    }

    SUBMISSIONS {
        int submissions_id PK
        int student_id FK
        int assessment_id FK
        date submission_date
    }

    REVIEWS {
        int review_id PK
        int student_id FK
        int course_id FK
        float rating
        string comment
        date review_date
    }

    STUDENTS ||--|{ ENROLLMENTS : "Enroll"
    STUDENTS ||--|{ SUBSCRIPTIONS : "Subscribe"
    STUDENTS }|--|{ PAYMENT_RECORDS : "Pay"
    STUDENTS ||--|{ REVIEWS : "Write"
    STUDENTS ||--|| ASSESSMENTS : "Assessment"
    STUDENTS ||--|{ SUBMISSIONS  : "Submit"
    INSTRUCTORS ||--|{ COURSES : "Teach"
    ENROLLMENTS }|--|| COURSES : "Enroll Courses"
    SUBSCRIPTIONS }|--|| COURSES : "Enroll Courses"
    SUBSCRIPTIONS ||--|| PAYMENT_RECORDS : "Payment"
    ENROLLMENTS ||--|| PAYMENT_RECORDS : "Payment"
    COURSES ||--|{ REVIEWS : "Reviews"
    COURSES }|--|{ MODULES : "Modules in corses"
    MODULES ||--|{ ASSESSMENTS : "Assessment"
    ASSESSMENTS ||--o{ SUBMISSIONS : "Submission"
