# _Made for Lotto_ README.md
The project is a line generator for National Lottery’s Lotto. _Made for Lotto_ consists of three main views; Make Lines, FAQs, Load Lines.

### 1 - Make Lines:
Make Lines allows a user to enter a lucky and an unlucky number in the range of 1-47. A lucky number is guaranteed to be selected during line generation, while an unlucky number is excluded during line generation. Next, the user can click the Submit button to generate a Lotto line. Next, a custom Ruby gem is used to select six numbers from the range of 1-47, including the lucky number and excluding the unlucky number. Next, a generated line can be saved to a database by clicking the Create Line button.

### 2 - FAQs:
FAQs allows a user to read up-to-date instructions on how to use Made for Lotto and how to play National Lottery’s Lotto. The format of these instructions is questions and answers. Information such as the minimum play for National Lottery’s Lotto being two €2 lines per draw and the National Lottery draw being every Wednesday and Saturday at 19:55 on RTÉ One are examples of answers to questions.

### 3 - Load Lines:
Load Lines allows a user to read all previously saved Lotto lines from a database. Next, the user can click the Show this line link below a Lotto line to edit or delete the Lotto line. If the user wants to edit the Lotto line, the user can click the Edit this line link, input the edited line, and click the Update Line button. If the user wants to delete the Lotto line, the user can click the Destroy this line button. For the database, the six-number Lotto line is stored in a single string variable for readability purposes.
