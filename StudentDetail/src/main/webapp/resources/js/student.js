
        function onlyAlphabets(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }
        function onlyAdd(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }
        function onlyAdddata(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }

        function alphaNumeric(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 ";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }
         function onlyNumeric(e, t) {
        		var arr = "0123456789";
                var code;
                if (window.event)
                    code = e.keyCode;
                else
                    code = e.which;
                var char = keychar = String.fromCharCode(code);
                if (arr.indexOf(char) == -1)
                    return false;
        }
        
        	function onlyNos(evt,id)
        	{
        		try{
        	        var charCode = (evt.which) ? evt.which : event.keyCode;
        	  
        	        if(charCode==46){
        	            var txt=document.getElementById(id).value;
        	            if(!(txt.indexOf(".") > -1)){
        		
        	                return true;
        	            }
        	        }
        	        if (charCode > 31 && (charCode < 48 || charCode > 57) )
        	            return false;

        	        return true;
        		}
             catch (err) {
                 alert(err.Description);
             }
         }
 
        
        function onlyAddress(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@,-(): ";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }
     
        function onlyEmail(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@_. ";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }

        function onlyWeb(e, t) {
        	var arr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.:/@ ";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }
        function onlyTime(e, t) {
        	var arr = "AMPamp.:0123456789 ";
            var code;
            if (window.event)
                code = e.keyCode;
            else
                code = e.which;
            var char = keychar = String.fromCharCode(code);
            if (arr.indexOf(char) == -1)
                return false;
        }
             