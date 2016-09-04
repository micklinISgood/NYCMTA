Resources:
 

You can consult any Apple documentation or other general iOS resources on the Internet, but please do not search for direct solutions to the assignment or cut and paste others’ implementations: All code should be your own.
 

Things to Remember:
 

It’s more important to get something working than to hit every detail of the exercise. You can explain what you didn’t get to in comments.
Using Storyboard, nib files, or Auto Layout is OK, but none are required
By default, your cells and text boxes can all be the same height. (For extra credit, you can try to vary the cell heights and size text boxes on the fly.)
 

The Task: 
 

Create an iPhone app that displays a vertically scrollable table of information about the subway lines that make up New York City’s system. Each subway line should have its own cell in the table, and each cell should contain:
 

the letter/number of the line (for example, “A” or “7”), contained within a circle whose color is the “official” MTA color for this line.
the route name and description of the subway line

 

You can use this screenshot below as a guide:
 ![](https://github.com/micklinISgood/NYCMTA/blob/master/NYCMTA.png)


(Table can swipe up and down.)
 

The Data: 
 

Please use the file subway-lister.json we’ve supplied with this exercise, which is set up in JSON format (Dropbox URL below), as your data source.
https://db.tt/juWMvWMF
 

You should add this file directly to your Xcode project and use methods to retrieve the data from it. (Subway lines should be displayed in the order they appear in the file.)
 

At the top level, the JSON is a dictionary with one key: “lines”. The value for this key is an array of objects describing each subway line.
 

Each of these subway line objects contains these keys:
“name” is the line route name
“hexcolor” is line color in RGB hex format (e.g. “FF0000” is bright red)
“letter” is the subway letter (or number!)
“desc” is the line description
