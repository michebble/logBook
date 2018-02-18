# logBook
A barebones logbook file generator writen in Ruby for Macos. It creates text files named for the day's date, along with the folder structure to organise the files by month and year. This file can then be used to record your ideas and thoughts about your current projects or anything. LogBook takes the tedium out of creating and files and folders that help organise your thoughts by the date they happened.

## Getting started
### Prerequisites
Requires at least Ruby 2.3.3. Not tested on other versions.

### Installation
Place 'logbook.rb' in and easy to locate folder and run it from your command line. 

```
$ ruby logbook.rb
```


It will generate a folder structure inside the current user's Documents folder. These folders are based on the year and month of the local date. Inside the 'month' folder a plain text file titled by the day's date will be created. This file will automatically open using the current default text reader.

## Version
Version 1 - intial release

## Author
* **Michael Hebblethwaite** - [michebble](https://github.com/michebble/)


## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
