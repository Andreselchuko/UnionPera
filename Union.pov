#include "colors.inc" 


//Me permite colocar una c�mara y aputarla a una localizaci�n espec�fica.
camera{
    //D�nde se encuentra la c�mara con coordenadas <x,y,z>
    location <18,5,25>
    //A donde apunta con coordenadas <x,y,z>
    look_at <4,5,8>
    }

//Fuente de luz
 
  light_source {<20, 20, 5> color Yellow} 

union{
//Esfera
sphere{
    //Localizaci�n y radio
    <0, 3 ,8>, 4
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{
	    //Color en RGB y transparencia del color
            color rgb<0.35,1,1>
        }
	//El acabado final y representa una propiedad de la reflexi�n de la luz
        finish{
            phong 0.18         
        }   
    }
}  

sphere{
    //Localizaci�n y radio
    <-0, 7 ,10>, 2.8
    //Textura de la esfera
    texture{
	//Solo se usa pigmento    
        pigment{
	    //Color en RGB y transparencia del color
            color rgb<0.35,1,1>
        }
	//El acabado final y representa una propiedad de la reflexi�n de la luz
         finish{
            phong 0.1        
        }   
    }
}
}//Final merge
box{
 <3, 15, 7>, < 1.8, 12, 6> //puntos diagonalmente opuestos
 texture { pigment { color rgb <1,0.65, 0>} }
 rotate <20, 15, 45>
 }
//Final de union.

//Plano 
  plane {
    y, -1
    texture {     
	    pigment{     
	        //azul 
		    color rgb<0,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0 //Modidique la reflexion del suelo.
      }
    }
  }
//Elimine los panos z y x
