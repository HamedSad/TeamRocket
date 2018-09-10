<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.2/semantic.min.css">
            <link rel="stylesheet" href="Style.css">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="print.css" media="print">
            <title>Rocket</title>
        </head>
        
        <body>
            
         <div class="wrapp">   
           
              <div class="header"> 
                  
                <div class="rocket">
                    <img src="Images/logo.png" width="100" height="70" align="left">
                </div>
                
                <div class="pageprincipale" align="right">
                        <form action="ConnectFetch.jsp">
		                    Pseudo <input type="text" name="pseudo" size="26"><br><br>
                            Mot de passe <input type="password" name="mdp"><br><br>
                            <input type="submit" value="Se connecter!">
		                </form>
                </div>
                
            
             </div>
                        
            
                <div class="partie2"> 
                    
                    <div class="logo">
                        
                        <h1>Qu'est ce que Rocket! ?</h1><br>
                        <p>Rocket est une <strong>plateforme communautaire </strong> permettant de mettre en relation des <strong>créateurs d'évenements</strong> avec des dizaines de participants</p>
                        <p>En plus, ils peuvent même t'aider sous forme de dons totalement <strong>solidaires et sécurisés</strong></p>
                        <p><strong>C'est simple, rapide et 100% gratuit</strong></p>
                        <img src="https://image.noelshack.com/fichiers/2017/24/3/1497456407-icone-one-piece-manga-ico-png-icns-windows-linux-mac.png">
                    </div>
                    
                    <div class="inscription">            
                        <h1>Inscription</h1><br>
                            <p>Pour rejoindre la communauté Rocket!, il te suffit de compléter le formulaire ci-dessous</p>        
                                <form action="RegisterSave.jsp">
                                    <fieldset>
                                            <div class="pseudo">
                                                <label for="uname"></label>
                                                <input type="text" id="uname" name="pseudo" required
                                                       minlength="6" maxlength="100"
                                                       placeholder="Pseudo" />
                                                <span class="validity"></span>
                                            </div>

                                            <div class="password">
                                                <label for="uname"></label>
                                                <input type="password" id="uname" name="mdp" required
                                                       minlength="8" maxlength="100"
                                                       placeholder="Mot de passe" />
                                                <span class="validity"></span>
                                            </div>

                                            <div class="confirmation">
                                                <label for="uname"></label>
                                                <input type="password" id="uname" name="mdp2" required
                                                       minlength="8" maxlength="100"
                                                       placeholder="Confirmation" />
                                                <span class="validity"></span>
                                            </div>

                                             <div class="email">
                                                <label for="uname"></label>
                                                <input type="text" id="uname" name="email" required
                                                       minlength="8" maxlength="100"
                                                       placeholder="Email" />
                                                <span class="validity"></span>
                                            </div>

                                    </fieldset>
                                        <tr><td><input type="submit" value="S'inscrire!"></td></tr>
                                </form>
                    </div>
                    
                </div>
            
            
                <div class="créer">
                    <h1>Comment créer mon événement?</h1>
                    <br><br>
                    <div class="icones">
                        <div class="icone1"><img src="http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19761.png" alt="Logo facebook"><br><br><br><h3>1. Je crée mon<br> événement</h3></div>
                        <div class="icone2"><img src="https://focussnapeat.com/wp-content/uploads/2016/06/snapcodes.png" alt="logo Snapchat"><br><br><br><h3>2. Je fixe mes<br> participants</h3></div>
                        <div class="icone3"><img src="https://www.unet.cz/blog/wp-content/uploads/2017/11/Twitter_logo00.png" alt="Logo twitter"><br><br><br><h3>3. Je configure<br> ma cagnotte</h3></div>
                        <div class="icone4"><img src="https://blog.opennemas.com/media/blog/images/2017/11/21/2017112117323379600.png" alt="Logo insta"><br><br><br><h3>4. Je fixe MON<br> événement</h3></div>
                    </div>
                    
                </div>

            
                <div class="partie3">
                  <img class="card-img" src="http://mjcloreillecassee.com/home/wp-content/uploads/2017/05/Banniere-Fete-de-la-MJC-site-OKC.jpg" alt="Card image">
                </div>

                                                                            
                    <div class="créer">
                    <h1>Pour participer à un événement?</h1>
                    <br><br>
                        <div class="icones">
                              <div class="icone1"><img src="http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19761.png" alt="Logo facebook"><br><br><br><h3>1. Je cherche<br> par mots-clé</h3></div>
                            <div class="icone2"><img src="https://focussnapeat.com/wp-content/uploads/2016/06/snapcodes.png" alt="logo Snapchat"><br><br><br><h3>2. Je choisis<br> l'événement</h3></div>
                            <div class="icone3"><img src="https://www.unet.cz/blog/wp-content/uploads/2017/11/Twitter_logo00.png" alt="Logo twitter"><br><br><br><h3>3. Je donne<br> si je veux</h3></div>
                            <div class="icone4"><img src="https://blog.opennemas.com/media/blog/images/2017/11/21/2017112117323379600.png" alt="Logo insta"><br><br><br><h3>4. Je valide ma<br>participation</h3></div>
                        </div>
                    </div>
                
                
                <div class="fun">
                    <h1>Et c'est parti pour le fun!</h1>
                </div>
             
                <div class="type">
                    <img class="card-img-top" src="http://mjcloreillecassee.com/home/wp-content/uploads/2017/05/Banniere-Fete-de-la-MJC-site-OKC.jpg" alt="Image Concert">
                </div>

            	<hr>
            
                <div class="footer">
                    <div class="centragefooter">
                        <div class="liens">
                            <p><strong>Reste connecté sur les réseaux</strong></p><br>
                        <div class="iconesfooter">
                          <h4><a href="https://www.facebook.com" target="_blank"><img src="http://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19761.png" alt="Logo facebook"></a>
                          <a href="https://www.linkedin.com" target="_blank"><img src="https://focussnapeat.com/wp-content/uploads/2016/06/snapcodes.png" alt="logo Snapchat"></a>
                          <a href="https://www.twitter.com" target="_blank"><img src="https://www.unet.cz/blog/wp-content/uploads/2017/11/Twitter_logo00.png" alt="Logo twitter"></a>
                              <a href="https://www.instagram.com" target="-blank"><img src="https://blog.opennemas.com/media/blog/images/2017/11/21/2017112117323379600.png" alt="Logo insta"></a></h4>
                        </div>
                        </div>
                        <div class="newsletter">
                            <form action="NewsletterSave.jsp">
                                <p><strong>Pour t'inscrire à la newsletter</strong></p><br>    
                                <p>Email<input type="text" name="email"></p>
                                <p><input type="submit" value="Je m'inscris!"></p>
                                
                            </form>
                        </div>
                    </div>
                    <div class="infos">
                        <p>Contact  | Conditions générales d'utilisation  |  Qui sommes-nous? 
                        <br><br>Rocket! 2018 Tous droits réservés</p>
                    </div>
                </div>
            
            </div> 
        </body>
    </html>
        