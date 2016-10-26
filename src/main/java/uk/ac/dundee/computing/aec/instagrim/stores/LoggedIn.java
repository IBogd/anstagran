/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.stores;

//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class LoggedIn {
    
    private boolean logedin=false; // create login private
    private String Username=null;
    
    // new
    private String Address = null;
    private String AboutMe = null;
    private String Name = null;
    
    public void LogedIn(){
    }
    
    // user name
    public void setUsername(String name){
        this.Username=name;
    }
    public String getUsername(){
        return Username;
    }
    
    // logged in out
    public void setLogedin(){
        logedin=true;
    }
    public void setLogedout(){
        logedin=false;
    }
    
    public void setLoginState(boolean logedin){
        this.logedin=logedin;
    }
    public boolean getlogedin(){
        return logedin;
    }
    // address
    public void setAddress(String address){
        Address = address;
    }
    
    public String getAddress(){
        return Address;
    }
    
    // about
    public void setAbout(String about) {
        AboutMe = about;
    }
    
    public String getAbout() {
        return AboutMe;
    }
    
    // full name
    public void setName(String name) {
        Name = name;
    }
    
    public String getName() {
        return Name;
    }
}
