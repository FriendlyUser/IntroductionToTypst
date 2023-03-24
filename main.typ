#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: resume.with(
  title: "New Grad Resume",
  location: "Vancouver, BC",
  postalCode: "V5Y 1V4",
  phoneNumber: "(604) 873-7000",
  email: "newGrad@gmail.com",
  experiences: (
    (
      employee: "Big Company",
      jobTitle: "Software Developer",
      startDate: "March 2020",
      endDate: "Current",
      location: "BC, Canada",
      points: (
        (
          "Implementing web app for a website with html css and javascript"
        ),
        (
          "Implementing mobile app all by myself"
        ),
        (
          "Releasing untested code"
        ),
        (
          "Buggy software development"
        )
      )
    ),
    (
      employee: "Small Company",
      jobTitle: "Software Engineer",
      startDate: "March 2018",
      endDate: "March 2020",
      location: "BC, Canada",
      points: (
        ("Quality Assurance for mobile app"),
        (
          "Unit Testing for mobile app"
        ),
        (
          "Gaining credit for coop"
        )
      )
    ),
  ),
  education: (
    name: "University of Victoria",
    startDate: "September 2016",
    endDate: "December 2019",
    degree: "Computer Engineering",
    location: "Victoria, BC",
    points: (
      (
        "Good At Math"
      ), 
      (
        "Good at Coding"
      )
    )
  )
)
