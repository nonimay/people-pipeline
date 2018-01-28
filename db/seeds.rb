#create default user
User.create(name: "Fiona Hobbs", email: "fionamayhobbs@gmail.com", password: "password123", password_confirmation: "password123")

#education levels
Education.create(level: 1, qualification: "Doctoral degree")
Education.create(level: 2, qualification: "Master's degree")
Education.create(level: 3, qualification: "Bachelor's degree with honours")
Education.create(level: 4, qualification: "Non-honours bachelor's degree")
Education.create(level: 5, qualification: "HNC / HND")
Education.create(level: 6, qualification: "A-level")
Education.create(level: 7, qualification: "GCSE (grades A*–C)")
Education.create(level: 8, qualification: "GCSE (grades D-G)")

#pipeline statuses
PipelineStatus.create(status: "Uncontacted")
PipelineStatus.create(status: "Arranging interview")
PipelineStatus.create(status: "Waiting for interview")
PipelineStatus.create(status: "Interviewed")
PipelineStatus.create(status: "Currently unsuitable")
PipelineStatus.create(status: "Declined offer")
PipelineStatus.create(status: "Waiting for opportunity")
PipelineStatus.create(status: "Employed")

#employment statuses
EmploymentStatus.create(status: "Employed - Permanent")
EmploymentStatus.create(status: "Employed - Contractor")
EmploymentStatus.create(status: "Unemployed")
