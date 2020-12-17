
## Name

Trainer CRUD

## Description

School system's Trainer CRUD operations implemented like:\
\
&emsp;&#8226;&emsp;Create Trainer\
\
&emsp;&#8226;&emsp;Read Trainer details\
\
&emsp;&#8226;&emsp;Update Trainer details\
\
&emsp;&#8226;&emsp;Delete Trainer

## Demonstration

***First of all you need to provide a database username and password on <ins>src/main/resources/application.properties</ins> file***

Starting the web application user is redirected to the home page of the application.

<img src="screenshots/home-page.PNG" />

#### Create trainer

Clicking on Add option on navigation bar user is able of creating a new user.

<img src="screenshots/create-trainer.PNG" />

The form presented to user is provided with both front end validations

<img src="screenshots/bootstrap-validation.PNG" />

and (in case something goes wrong with front end) server validations. User gets redirected to Trainers table to see the new Trainer persisted.

<img src="screenshots/server-validation.PNG" />

#### Read Trainer details

On Review option user can view all trainers stored in database.

<img src="screenshots/read-trainer.PNG" />

#### Update Trainer details or Delete Trainer

Update or Delete option gives user the capability to update trainer details by clicking the Update button,

<img src="screenshots/update-delete-trainer.PNG" />

*Same form validation rules apply as Create Trainer form*

or delete user by clicking the Delete button. On both cases user gets redirected to Trainers table to see update or delete operations are persisted.

*In the example below is presented the table afte deleting Trainer number 3*

<img src="screenshots/read-trainer-after-delete.PNG" />

#### Error pages

If user sends a http request on the application that creates an error or an exception he/she will be redirected to the respective page that displays the respective message.  

##### Sending a http request on a resource that doesn't exist 

<img src="screenshots/error404.PNG" />

##### Create a new Trainer that has the same details as an already persisted Trainer

<img src="screenshots/duplicate-entry.PNG" />

##### Any other http request resulting to an error or exception

<img src="screenshots/error.PNG" />

## Technology & Tools

<a href="https://www.java.com/en/download/">Java 8</a> <br>
<a href="https://netbeans.org/">Apache NetBeans IDE</a> <br>
<a href="https://maven.apache.org/">Maven</a> <br>
<a href="https://spring.io/projects/spring-boot">Spring Boot</a> <br>
&emsp;&#8226;&emsp;Spring Boot DevTools\
&emsp;&#8226;&emsp;Spring Web MVC\
&emsp;&#8226;&emsp;Spring Data JPA\
<a href="http://tomcat.apache.org/">Tomcat</a> <br>
<a href="https://www.oracle.com/java/technologies/jspt.html">JavaServer Pages</a> <br>
