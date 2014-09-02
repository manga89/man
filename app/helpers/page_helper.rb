module PageHelper
 def calender




cal = "<table border = '1'>\n\t<tr>\n"
days = %w(Sun Mon Tue Wed Thur Fri Sat)

days.each do | day |

cal += "\t\t<td>#{day}</td>\n"
 end

cal += "\t</tr>\n</table>\n"

   return cal



end


end
