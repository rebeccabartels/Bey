#Lemonade TableViews

##INSTRUCTIONS
In the project for this lab, add 3 classes:

* TeamMember, an NSObject;
* TeamViewController, a UIViewController; and
* TeamDetailViewController, another UIViewController.

The three classes serve the following functions:

* TeamMember is a model class that represents each member of your team. It should have a name (name), phone number (phoneNumber), birth city (birthCity), birth state (birthState), favorite band (favoriteBand), and photo (photo). (Hint: use UIImage for the photo property. You can use the class method imageNamed: to retrieve assets in your assets catalog. We've included some images with this project Notice the blue folder Images.xcassets in your file navigator? That's where you can find the images.)

* TeamViewController manages a view with UIButtons for each of your team members.
* TeamDetailViewController is pushed onto the navigation stack when a button is pressed in TeamViewController. It displays the details for the particular team member that was tapped in the TeamViewController. TeamDetailViewController should have a public property of type TeamMember called teamMember.

1. In the storyboard, set the custom class of the view controllers to the new subclasses you just created.

2. Control-drag from each button on the TeamViewController to the TeamDetailViewController and select a "Show" segue. This makes it so that tapping any button performs a segue to the TeamDetailViewController. *Run the app and see that the buttons do transition to the detail view controller. However, there are two problems. First, the detail is presented modally, and there's no way to get back to the previous screen. Second, the detail view controller has no idea which button was tapped! Let's remedy those issues.

3. In order for the segue to work as expected, you'll need to embed TeamViewController in a navigation controller in your storyboard. Do that!

4. Use the -prepareForSegue:sender: method of TeamViewController to pass the tapped user forward to the detail view controller - Do not use individual IBActions for each of the buttons. Think about the best way to do this. The detail view controller should set all of its labels and image based on the team member that was tapped. You can access the detail view controller by calling the destinationViewController property of the segue.

**HINTS**

* The -prepareForSegue:sender: method in your TeamViewController is passed a UIStoryboardSegue argument which can be used to access the destination view controller of the segue. Since we know the destination is a TeamDetailViewController, we can cast it to the appropriate type and set its teamMember property to the member that corresponds with the tapped button. How can you figure out what button triggered the segue? (There are multiple options -- you can set identifiers for each of the segues in your storyboard and access those identifiers (with segue.identifier). Alternatively, you could create an IBOutlet for each of your buttons and check if the sender argument for -prepareForSegue:sender: is equal to any of the buttons. Play around with each!)
* Once you figure out which team member was tapped, you should create a new variable of type TeamMember and set each of its properties to the correct values. For Al, set his name to "Al", his phone number to "5551212", his birth city to "Detroit", his birth state to "Michigan", his favorite band to "The Beatles", and his photo to the included image for Al. For the rest of the team members, set each of their properties to whatever you want! Have fun with it, but remember to use the correct images included with the project. Once you've passed the correct team member over to the destination view controller, set the labels and image based on the TeamDetailViewController's teamMember property