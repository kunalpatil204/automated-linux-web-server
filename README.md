# Secure & Automated Linux Web Server Deployment

📌 Overview

This project demonstrates the automation of a secure Linux-based web server using Nginx and PHP-FPM. The objective was to simulate a production-style deployment with proper security practices, service management, and real-world troubleshooting.
The setup is fully automated using modular Bash scripts.

🎯Features

-Automated LEMP stack installation (Nginx + PHP-FPM)                                             
-Dedicated application user with controlled permissions                                          
-Firewall configuration using UFW                                                                
-SSH hardening (root login & password authentication disabled)                                   
-Logging enabled for debugging                                                                   
-Validation script to verify service status                                               
-Failure simulation (403, 404, 500, 502 errors)

 Architecture
Browser → Nginx → PHP-FPM → Linux File System (/var/www/myapp)

🔐 Security Implemented                                                                         
-Restricted open ports (22, 80 only)                                                             
-Disabled SSH root login                                                                         
-Enforced key-based authentication                                                              
-Applied least-privilege file permissions                                                       
-Hidden Nginx version information                                                                

🔍 Troubleshooting Experience                                                
The following real-world issues were simulated and resolved:                                 
1)403 Forbidden – permission misconfiguration                                                    
2)404 Not Found – incorrect document root                                                        
3)500 Internal Server Error – PHP runtime issue                                                  
4)502 Bad Gateway – backend service failure                                                     

Logs used:                                                                       
/var/log/nginx/access.log                                                                      
/var/log/nginx/error.log                                                                         
PHP-FPM logs                                                                                     


🧰 Tech Stack                                                                                     
1.Linux (Ubuntu)                                                           
2.Nginx                                                                    
3.PHP 8.3 + PHP-FPM                                                     
4.UFW (Firewall)                                                                   
5.Bash scripting                                                                         

🚀 How to Run                                                                
git clone <repo-url>                                                              
cd secure-automated-linux-web-server/automation                                                
sudo ./setup_server.sh                                                            

Then open:                                                              
http://<server-ip>                                                                     

💡 Key Learning                                                                        
This project strengthened my understanding of Linux service management, security configuration, automation design, and log-based debugging in a production-style environment.
