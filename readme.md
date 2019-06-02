Maker Checker - Red Hat Decision Manager
=======================

Red Hat Decision Manager provides a way to author/manage business decisions. Organizations can incorporate sophisticated decision logic into line-of-business applications and quickly update underlying business rules as market conditions change. Often times,there needs to be a governance model around how the Rules are authored and how they are promoted in a typical production scenario.

Consider the following workflow, the business user makes the necessary rules changes and clicks on save. He then navigates to a custom UI, and initiates the Checker review. 

![alt text](https://github.com/snandakumar87/MakerCheckerWorkflow/blob/master/Maker_checker_BPM.png)

This then triggers a sequence of steps:

1) Build the latest kjar based on the Rules Changes.
2) Create a new Kie Container and add the newly built artifact to it. This will be an incremented minor version (development version - SNAPSHOT; for example Personalization_Rules_1.0.0-SNAPSHOT)
3) Compare the rule simulation by creating a cartesian product combination of all possible inputs for the newly created container vs Golden copy (We start here, there is a Baseline container and artifact for every rule artifact)
4) A user task is presented to the checker for review. Once the checker approves the changes are promoted.
5) The artifact is upgraded to release version, and the golden copy container is upgraded with the latest version.

![alt text](https://github.com/snandakumar87/MakerCheckerWorkflow/blob/master/Maker_screen.png)

Maker chooses an artifact and sends it for review.

![alt text](https://github.com/snandakumar87/MakerCheckerWorkflow/blob/master/Checker_Review.png)

Checker reviews the changes and promotes the changes.

Assumptions/extensions: When there is one Rule review in progress, we would want the changes to be pushed before we can create a new change. This is important because, if the earlier change is rejected, any cascading changes should have to roll back appropriately.

Code Setup and walkthrough
=======================

1) Checkout https://github.com/snandakumar87/makercheckerwih. This should checkout all the Work item handlers needed for the workflow. 
For each of three WIH: mvn clean install
2) Checkout this repo and import in to Red Hat Decision Manager. Build and deploy.
3) Pull in the dependencies of the WIH and appropriately adjust the dependencies for the project.
4) Checkout https://github.com/snandakumar87/Personalization_Rules_MakerChecker. This is the rule package which we are using to demonstrate the Maker Checker workflow. Import in to Red Hat Decision Manager and build and deploy (with artifact/container version as Baseline)
5) Checkout https://github.com/snandakumar87/MakerCheckerUI. This is the Patternfly UI code, which we are using for this demonstration. This a maven project, run MakerCheckerVerticle.java.
6) Make a change in the rule under the Personalization_Rules project and hit save.
7) On the Maker UI (http://localhost:8037/static/checker_dashboard.html) and choose Personalization_Rules, add a change comment and send to checker.
8) On the Checker UI(http://localhost:8037/static/checker_simulation.html) and Approve the changes.
9) If you inspect the maven repositories, you will see that once the process completes a new release version is created.

Simulation:

For the Simulation, in this example, we are using a custom object list to collect rules being fired so that we can make use of it for the purpose of simulation. You could also, set up an Rules Event Listener to catch the rules being fired with its fact models. 




