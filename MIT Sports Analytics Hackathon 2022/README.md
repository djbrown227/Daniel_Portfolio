# Python Projects

## Introduction
In March of 2022 I participated in the MIT Sports Analytics Conference Hackathon in the Open Division. My teammate was David Bergman, who I later worked on The Whistles Go Woo website with, made it to the hackathon finals where we presented our findings.

## Competition Summary
Participants in the competition were given NHL sample data a few days before the hackathon. It included tracking data, velocity and play by play data(both hand generated and system generated) for a few games during the 2020 NHL season. The intention of this was to get the participants used to the format, size and type of data they would be working with on the day of the hackathon. 

On the day of the hackathon the particpants were given similarly formatted data for 40 players from the 2020 Stanley Cup Finals. The competition started at 9:00 am and finished at 3:45 pm. Each team would present to the judges at 4:00 pm and those who won would present the next day in the finals.

## Project At A Glance
David and I signed up for this competition knowing very little about hockey. After reviewing the basic rules of hockey I read three books on hockey analytics to prepare:

1. Stat Shot by Rob Vollman
2. Tape to Space: Redefining Modern Hockey Tactics Redefining Modern Hockey Tactics by Stimson, Ryan Kent
3. Hockey Analytics: A Game-Changing Perspective A Game-Changing Perspective by Stephen Shea, Christopher Baker, Craig Custance

These books gave me insight into the inherent difficulty of analyzing low scoring/low probability games. What makes a good shot? What circumstances give highest probaility for a goal? What makes a good defensive player? What makes a good goalie? What makes a good prospect?

The questions and explanations found in this book allowed me to start asking questions that could possibly be explored with the given data set. I also started to think about basketball analytics measures and how they might make sense in hockey analytics. I ended up discovering Convex Hull Area Defense(CHAD) which is a measure of the inner area a defense has on a basketball court. Could this be applied to a hockey data set, and could this prove to be a useful metric to describe some phenomena in hockey?

The day before the competition Dave and I met up to go over the practice dataset to see what we could find. After getting a feel for what information the dataset contained, we began brainstorming directions we should take our analysis. I mentioned CHAD and Dave was intrigued. We then started to think about other metrics for the defensive side of hockey and ended up coming up with our called DD(the first letters of our first names).DD measures the average distance of both defenders from the goalie.

On the day of the competition we sat down and started to peer through our new dataset. We began to find that it could be best to measure DD given a specific scenario, specifically when all players on the ice were over the centerline. This is analagous to a halfcourt offense in basketball. Intuitively we thought that the greater DD was for the defenders the less chance the other team would be able to quickly counter attack(we defined a counter attack as a shot within 20 seconds of gaining possession of the puck). Through out analysis we found the exact opposite. The more aggressive, the smaller DD, the less probability of a counter attack.

<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/MIT%20Sports%20Analytics%20Hackathon%202022/NHL%20Hackathon%20DD.png" width = 700><p>
  
We used a logistic regression model to prove this.

<p align="center"><img src = "https://github.com/djbrown227/Daniel_Portfolio/blob/main/MIT%20Sports%20Analytics%20Hackathon%202022/NHL%20Hackathon%20Logit.png" width = 700><p>

[The full presentation can be seen here] ("https://github.com/djbrown227/Daniel_Portfolio/blob/main/MIT%20Sports%20Analytics%20Hackathon%202022/2022-MITSAC-Hackathon.pptx.pdf")

After presenting we were told we made it to the finals and that we would be presenting the next day. And although we did not win, the other finalist in the Open division said some very kind things about us in an article he wrote on Medium:
"There were two teams in the Open Division that were in the finals. We were going up against a juggernaut team of David Bergman and Daniel Brown. They had created a new metric in the week prior to the hackathon on sample data and had spent the hackathon applying it to the full dataset. It was compelling and after the preliminary judging, we were clearly down."

[The full article can be seen here](https://bayesianops.medium.com/winning-the-mit-sloan-sports-analytics-2022-hackathon-2df76667be73)

## Conclusion
In the end it was a great experience. We were able to meet respresentatives from the NHL and ESPN and have them give feedback on our projects. I plan on heading back to Boston and participating in the competition next year.
  
### Contact Me

| Contact Method |  |
| --- | --- |
| Professional Email | djbrown227@gmail.com |
| School Email | djbrown227@gmail.com |
| LinkedIn | https://www.linkedin.com/in/ |

