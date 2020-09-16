<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
</head>
<body>

<div id="content" role="main" class="container">
    <h1>Welcome to Grails</h1>
    <p>
        Congratulations, you have successfully started your first Grails application! At the moment
        this is the default page, feel free to modify it to either redirect to a controller or display
        whatever content you may choose. Below is a list of controllers that are currently deployed in
        this application, click on each to execute its default action:
    </p>
    <h1>Next Steps</h1>
    <p>
        You should probably modify the UrlMappings.groovy file and delete this index.gsp once you've
        made it so the route to "/" is some controller/action of your choosing.
    </p>
    <h1>Available Controllers:</h1>
    <ul class="list-group">
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
            <li class="list-group-item">
                <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
            </li>
        </g:each>
    </ul>
</div>

</body>
</html>
