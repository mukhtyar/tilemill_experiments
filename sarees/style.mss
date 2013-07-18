Map {
  background-color: transparent;
}


/*#indiastates {
  line-color:#b5870b;
  line-width:1;
  line-smooth:1;
  line-comp-op:overlay;
  

  
}*/

#indiastates::tint-bands {
  image-filters: agg-stack-blur(3,3);
  opacity: 0.3;
  line-join: round;
  [zoom=2] { line-width: 3; }
  [zoom=3] { line-width: 5; }
  [zoom=4] { line-width: 8; }
  [zoom=5] { line-width: 12; }
  [zoom=6] { line-width: 17; }
  [zoom>6] { line-width: 23; }
}

@line: #b5870b;
#indiastates::land-glow-inner[zoom>=0] { 
  line-color:@line;
  line-opacity:0.5;
  line-join:round;
  [zoom=0] { line-width:1.2; }
  [zoom=1] { line-width:1.6; }
  [zoom=2] { line-width:2; }
  [zoom>2] { line-width:2.4; }
}

#indiastates::land-glow-outer[zoom>1] { 
  line-color:@line;
  line-width:5;
  line-opacity:0.1;
  line-join:round;
}
