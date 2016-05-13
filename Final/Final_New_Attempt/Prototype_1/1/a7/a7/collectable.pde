class collect
{
  collect()
  {
  }
  
  
  void form()
  {
    for (int o = 0; o<(forest.length); o++)
  {
    for (int n = 0; n<(forest[0].length); n++)

    {
      if (col[o][n] == 1)
      { 
        fill(#F71B82);
        rect(((o+.45)*mod), ((n+.45)*mod), (mod/4)/2, (mod/4)/2);
      }
    }
  }
  }
  
  
}