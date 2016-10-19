//from demo on arrays with fixed data

//store a list of weather data with high temps of: 81, 79, 70, 67, 61
//create a second list of feelings 


// creates an integer array called high and creates 5 positions
int[] high= new int[5];  

// creates a String array called feelings and initializes array elements in one sequence
String[] feelings= {"mad", "glad", "sad", "so mad"};  


void setup() {
  //initializing array elements individually
  high[0]= 81; //the first array element equals 81
  high[1]= 79;  // the second array element equals 79
  high[2]= 70;
  high[3]= 67;
  high[4]= 61;
  println(high[0]);  
  println ("the high today is " + high[0]);
}


void draw() {
 println ("the high tomorrow will be " + high[1]);
 
  println ("the high Thursday will be " + high[3] + " and I am " + feelings[0]);
 
 println ("the high Thursday will be " + high[3] + " and I am " + feelings[int(random(feelings.length))]);
}