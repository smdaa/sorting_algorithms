float[] values = new float[width];

int j = 0;

void setup(){
  size(800, 500);
  values = new float[width];
  randomize(values);
}

void draw(){
 println(frameRate);
 background(0);
 update(values);
 for (int i = 0; i < values.length - j -1 ; i++){
   if (values[i] > values[i + 1]){
    swap(values, i, i + 1);
   }
 }
 if ( j < values.length){
  j++;
 }
 saveFrame("output/array_####.png");
}

void update(float[] A){
  for (int x = 0; x < A.length; x++){ 
    stroke(255);
    line(x, width, x, height - A[x]);
  }
}

void randomize(float[] values){
  for (int i = 0; i < values.length; i++){
    values[i] = random(height);
  }
}

void swap(float[] A,int a,int b){
  float temp = A[a];
  A[a] = A[b];
  A[b] = temp;
}
