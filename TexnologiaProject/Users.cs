using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TexnologiaProject
{
    public class Users
    {
        string connectionString = @"server=localhost;user id=root; password=4040; persistsecurityinfo=True;database=leafletdb";
        //to connectionString to arxikopoiisa eksw apo tis methodous gia na to vlepoun oles oi methodoi
        //kanonika tha eprepe na mpei sto web.config gia na min einai mesa ston kwdika ta stoixeia tis vasis mou
        //i mysql mou vrisketai topika,(mysql80 sta services twn Windows) diladi opoios vrisketai sto idio diktuo me emena exei prosvasi se auta pou exw prosvasi kai egw 
        //oi getUsers den xrisimopoieitai
        public List<string> getUsers()//i methodos pou epistrefei olous tous users
        {
            MySqlConnection cnn = new MySqlConnection(connectionString);// dimiourgoume to connection me ti vasi xrisimopoiwntas to connection string pou einai exw apo ti methodo
            cnn.Open();//anoigei ti vasi me to cnn opou to cnn einai to mysqlconnection me orisma connectionString to opoio connection string 
            //deixnei pou tha paei gia na sundethei me ti sugekrimeni vasi pou exw ftiaxei gia to sustima
            string sql = "Select id, username, password, email from users";//einai ena aplo string pou tha xrisimopoithei ws query
            MySqlCommand command = new MySqlCommand(sql, cnn);//arxikopoioume to command pou xrisimopoiei ti vilviothiki MySqlCommand i opoia exei 2 orismata
            //

            List<string> listid = new List<string>();
            //List<string> listusername = new List<string>();
            //List<string> listpassword = new List<string>();
            //List<string> listemail = new List<string>();

            MySqlDataReader dataReader = command.ExecuteReader();//ektelei tin entoli command kai to apotelesma to apothikeuei se enan reader tis mysql

            //
            while (dataReader.Read())
            {
                listid.Add(dataReader[0].ToString());
            }

            cnn.Close();//edw kleinoume ti sindesi
            //
            return listid;

        }
        //gia na paroume kapoia stoixeia twn xristwn
        public string getUserByID(string id)
        {
            MySqlConnection cnn = new MySqlConnection();//tin egatestisa mazi me ta plugins gia ti mysql tin klasi 
            cnn = new MySqlConnection(connectionString);
            cnn.Open();
            MySqlCommand command;//Οριζουμε την εντολή sql
            MySqlDataReader dataReader;//Διαβαζουμε τα δεδομενα, ορίζουμε αυτόν που θα διαβάσει τα δεδομένα
            String sql, Output = "";
            sql = "SELECT username FROM leafletdb.users WHERE id=2";
            command = new MySqlCommand(sql, cnn);
            //Orizoyme to string pou tha epistrafei
            var username = command.ExecuteScalar();//επιστρέφει τα δεδομένα
            cnn.Close();
            return username.ToString();
        }

        public string CheckUsernamePassword(string username1, string password1)
        {
            try
            {
                MySqlConnection cnn = new MySqlConnection(connectionString);// dimiourgoume to connection me ti vasi xrisimopoiwntas to connection string pou einai exw apo ti methodo
                cnn.Open();//anoigei ti vasi me to cnn opou to cnn einai to mysqlconnection me orisma connectionString to opoio connection string 
                           //deixnei pou tha paei gia na sundethei me ti sugekrimeni vasi pou exw ftiaxei gia to sustima
                string sql = "Select id, username, password, email from users where username='" + username1 + "'";//einai ena aplo string pou tha xrisimopoithei ws query
                MySqlCommand command = new MySqlCommand(sql, cnn);//arxikopoioume to command pou xrisimopoiei ti vilviothiki MySqlCommand i opoia exei 2 orismata
                                                                  //

                MySqlDataReader dataReader = command.ExecuteReader();//(pataei kerauno)ektelei tin entoli command kai to apotelesma to apothikeuei se enan reader tis mysql

                string check = "ERROR";

                while (dataReader.Read())
                {
                    string decryptPassword = "";
                    ConverterCls hs = new ConverterCls();
                    decryptPassword = hs.Decrypt(dataReader[2].ToString());//to dataReade[2] einai i stili tou password
                    if (decryptPassword == password1)
                    {
                        check = dataReader[0].ToString();
                    }
                }
                cnn.Close();
                return check;
            }
            catch
            {
                return "ERROR";
            }
        }
        public string InsertNewUser(string InsertUserName, string InsertPassword, string InsertMail)
        {
            bool flag = false;
            string check = "ERROR";
            flag = CheckIfUserExists(InsertUserName);
            if (flag == true)
            {
                return check;
            }
            else
            {
                string hashedPassword = "";
                ConverterCls hs = new ConverterCls();
                hashedPassword = hs.Encrypt(InsertPassword);

                try
                {
                    MySqlConnection cnn = new MySqlConnection(connectionString);
                    cnn.Open();
                    string sql = "INSERT INTO users(username , password, email) VALUES('" + InsertUserName + "', '" + hashedPassword + "', '" + InsertMail + "')";
                    MySqlCommand command = new MySqlCommand(sql, cnn);
                    command.ExecuteReader();
                    check = "OK";
                    return check;
                }
                catch
                {
                    return check;
                }
            }
        }
        public bool CheckIfUserExists(string InsertUserName)//
        {
            bool check = false;
            try
            {
                MySqlConnection cnn = new MySqlConnection(connectionString);
                cnn.Open();
                string sql = "Select username from users where username='" + InsertUserName + "'";
                MySqlCommand command = new MySqlCommand(sql, cnn);
                MySqlDataReader dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    if (dataReader[0].ToString() == InsertUserName)
                    {
                        check = true;
                    }
                }
            }
            catch
            {
                check = true;
            }
            return check;
        }
        public List<string> getUserIds()
        {
            MySqlConnection cnn = new MySqlConnection(connectionString);// dimiourgoume to connection me ti vasi xrisimopoiwntas to connection string pou einai exw apo ti methodo
            cnn.Open();//anoigei ti vasi me to cnn opou to cnn einai to mysqlconnection me orisma connectionString to opoio connection string 
            //deixnei pou tha paei gia na sundethei me ti sugekrimeni vasi pou exw ftiaxei gia to sustima
            string sql = "Select id from users";//einai ena aplo string pou tha xrisimopoithei ws query
            MySqlCommand command = new MySqlCommand(sql, cnn);//arxikopoioume to command pou xrisimopoiei ti vilviothiki MySqlCommand i opoia exei 2 orismata
            //

            List<string> listids = new List<string>();

            MySqlDataReader dataReader = command.ExecuteReader();//ektelei tin entoli command kai to apotelesma to apothikeuei se enan reader tis mysql

            //
            while (dataReader.Read())
            {
                listids.Add(dataReader[0].ToString());
            }

            cnn.Close();//edw kleinoume ti sindesi
            //
            return listids;
        }
    }
}