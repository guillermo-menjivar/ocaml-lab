(* Compile instructions:
    $ ocamlc -o <desired_output_file_name> unix.cma basic_echo.ml

   Reference: https://ocaml.github.io/ocamlunix/generalities.html
*)

let echo () =
    let len = Array.length Sys.argv in
if len > 1 then
    begin 
        print_string Sys.argv.(1);
        for i = 2 to len -1 do
            print_char ' ';
            print_string Sys.argv.(i);
        done;
        print_newline ();
    end;;

echo ();;
