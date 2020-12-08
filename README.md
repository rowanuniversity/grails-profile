# A grails profile for Rowan University Web Apps

Make sure that you've got grails 3.3.11 installed and JDK 1.8

Clone this repository first, and then run:

```
./gradlew install
```

Then you can create a new app using this profile with:

```
grails create-app APP_NAME --profile=edu.rowan:rowan:1.0.1
```

Features:

- Docker
  - Dockerfile for grails 3.3.11 & JDK 1.8
  - docker-compose.yml
  - SAMPLE.docker-compose.override.yml
  - SAMPLE.env
- Grails 3.3.11
  - Audit Logging Plugin
  - Setup for Oracle Connection
  - Spring Security
    - AppUser, AppRole, AppUserAppRole models pre-built
    - AppRole uses web tailor & RIMS for roles roles
  - Email
  - Fully externalized config: Don't touch application.yml
- Jquery 3.5.1
- Bootstrap 4.5.2
  - Customized with Rowan colors
- Font Awesome Free 5.11.2
- DataTables 1.10.18
  - Buttons 1.5.6, FixedHeader 3.1.4, Responsive 2.2.2
- Select2 4.0.8
- Gijgo JavaScript Library v1.9.13 (Date Picker)
- accounting.js v0.4.2
