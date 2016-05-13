class Noise
{

  int val= 40;
public void addNoise(Float add)
  {
      float iPlus = 0;  
for(int i = 0;i <val;i++)
  { iPlus += add;
float nPlus = 0;
 for(int n = 0;n <val;n++) 

     {nPlus += add;
 float filter = noise(iPlus,nPlus) * 5;
     
   
 map[i][n] = floor(filter);
 }
  
  
  }
  
    
    
    
    //this code was an adaptation of proffesor Bryan Ma of game aesthetics 2016
    
  }
 








}