# Mountainsurfing

[Live](https://mountainsurfing.herokuapp.com)

Moutainsurfing is a web application which allows user to search for and book rooms at mountain houses all over the world! This project is built by using JavaScript, React/Redux, CSS, Ruby on Rails and SQL.

Mountainsurfing is inspired by the courchsurfing and airbnb website.

## Technologies
The frontend web application was written by Javascipt's react library for reuseable and modular code. It was used in conjunction with the Redux framework to add in the benefits of a unidirectional data flow which made the application easier to debug. The backend code was used based upon rails to handle the data receiving from frontend and storage with a connection with SQL database.

## Features & Implementations
### Searching for the mountain houses
![alt text](https://github.com/qidizhai/mountain_surfing/blob/master/Screen%20Shot%202018-09-24%20at%205.24.57%20PM.png "Logo Title Text 1")

One of the biggest features of this web application is searching. This searching tab allows user to search all the mountain houses through this world. User can either search the places on the search bar or move the maps. Only the houses based on bounds of the map will be displayed on the page.

Ultimately, the database was designed to require each mountain house to contain its coordinates. Then an event listener and the google maps API were used to retrieve the northeastern and southwestern bounds of the map. Once the bounds were received, an ajax request was made to retrieve all the tree houses within the maps bounds through the filter and marker manager. Finally, the updated state would trigger a re-render of the mountain houses index and the index would populate with the available listings in the specified area. Seamlessly and in real time.

### Show page for each mountain houses
![alt text](https://github.com/qidizhai/mountain_surfing/blob/master/Screen%20Shot%202018-09-24%20at%205.42.56%20PM.png "Logo Title Text 1")
![alt text](https://github.com/qidizhai/mountain_surfing/blob/master/Screen%20Shot%202018-09-24%20at%205.43.16%20PM.png "Logo Title Text 1")
![alt text](https://github.com/qidizhai/mountain_surfing/blob/master/Screen%20Shot%202018-09-24%20at%205.43.40%20PM.png "Logo Title Text 1")
![alt text](https://github.com/qidizhai/mountain_surfing/blob/master/Screen%20Shot%202018-09-24%20at%205.43.25%20PM.png "Logo Title Text 1")

The show pages display all the house/hosts information. The most important features are booking and reviews. The user can click the leave a review button, which will populate a review form. After the user submits the review form, it will trigger the page re-render and display the most recent reviews. The booking form allows users to select the dates and click the booking button. After the user clicks the button, it will display "request has been sent".
