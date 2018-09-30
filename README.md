# 3. gyakorlat

#### Eltolás
`translate(x, y);`
> az eltolások összeadódnak!

#### Forgatás:
> `rotate(PI); `<- a koordináta rendszert forgatja el adott fokban  


#### Skálázás
> `scale(1, 1);` <- amik poözitívban voltak pozitív fele csúsznak el, a negatívak még negatívabbak lesznek

Ezeket a műveleteket `pushMatrix()` és `popMatrix()` közé írjuk!

### Hogyan forgassunk valami körül egy másik objektumot?

```Processing
pushMatrix();
     translate(mouseX, mouseY);
     scale(1.4, 1.4);
     circle.Draw();
     //c.Draw();
     //ellipse (mouseX, mouseY, 2*mouse_radius, 2*mouse_radius);
     
     rotate(millis()/600.0f);
     translate(160,0);
     scale(0.8, 0.8);
     //c.Draw();
     circle.Draw();
     
     pushMatrix();
       rotate(millis()/400.0f);
       scale(0.8,0.8);
       translate(80, 0);
       circle.Draw();
       
       pushMatrix();
         rotate(millis()/300.0f);
         scale(0.8, 0.8);
         translate(50, 0);
         circle.Draw();
       popMatrix();
       
     popMatrix();
     
   popMatrix();
```
