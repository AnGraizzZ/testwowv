window.onload = function()
{
    var script = document.createElement('script');//подключение jquery 
        script.type = 'text/javascript';
        script.src = 'http://code.jquery.com/jquery-1.8.3.js';
        document.head.appendChild(script);


    var bublik= document.getElementById("svg8");// обращение к бублику
    var kolJump = 0;//прыжки
    var msnd =0;//милисекунды
    var timer=0;//секунды
    var justJump=0;//позиция прыжка
    finish = false;//достижение финиша
    start = false;//проверка запуска бублика
    setInterval(() => {
        if (bublik.style.left=='0px')// если бублик на старте, отправить данные с прошлого забега, обнулить переменные и запустить бублик
        {
            
            if (start==true)
            {
             $.ajax({//отправка в php
                type: 'POST',
                 url: './info.php',                  
                 data: {rockPosition: window.terrain.rockPosition, 
                        timer:timer, justJump:justJump,rockSize:rockSize , finish:finish},     
                 success: function(data){   
                     console.log(data);           
                 }
             });
             console.log("Позиция препятствия  "+window.terrain.rockPosition);
             console.log("Время забега  "+timer);
             console.log("Дистанция на которой персонаж совершил прыжок  "+justJump);
             console.log("Размер препятствия  "+rockSize);
             console.log("Результат забега  "+finish);
            }
            
             rockSize = window.terrain.rockSize;
            justJump=0;
            msnd=0;
            timer=0;
            kolJump = 0; 
            finish = false;
            window.character.run();
            
           
        }
            start = true;
              var endRock=window.terrain.rockPosition+rockSize;
              var sizeJump = window.character.characterPosition+rockSize+rockSize;
              
              if(window.terrain.rockPosition < sizeJump)//если бублик рядом с препядствием, совершить прыжок
        {
            if(kolJump==0)//совершить прыжок если бублик еще не прыгал
            {
                kolJump+=1;
                window.character.jump();
                justJump=window.character.characterPosition;
               // console.log(justJump);
            }
        }
            
            msnd+=100;
            if(Number.isInteger(msnd/100))//таймер импровизация
                {
                    timer=msnd/100;
                   // console.log(timer);
                }
                
                
                if(kolJump>0  && window.character.characterPosition>endRock)//проверка прибежит ли бублик к финишу
                {
                    finish=true;
                   
                }
            }, 100);

        


}