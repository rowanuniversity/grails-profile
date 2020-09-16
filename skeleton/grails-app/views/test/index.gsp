<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div class="container">
    <span>User: ${user.displayName}</span>
    <ul>
        <li>PIDM: ${user.id}</li>
        <li>Banner ID: ${user.bannerId}</li>
        <li>email: ${user.email}</li>
        <li>username: ${user.username}</li>
        <li>firstName: ${user.firstName}</li>
        <li>lastName: ${user.lastName}</li>
        <li>middleName: ${user.middleName}</li>
        <li>prefFirstName: ${user.prefFirstName}</li>
        <li>phoneNumber: ${user.phoneNumber}</li>
        <li>ext: ${user.ext}</li>
        <li>building: ${user.building}</li>
    </ul>
    <div>
        <span>Roles:</span>
        <ul>
        <g:each in="${roles}" var="role">
            <li>${role}</li>
        </g:each>
        </ul>
    </div>
</div>

</body>
</html>
