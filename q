
[1mFrom:[0m /home/raphael/Documentos/Projetos/apitriskle/app/controllers/api/sessions_controller.rb @ line 6 Api::SessionsController#create:

     [1;34m3[0m: [32mdef[0m [1;34mcreate[0m
     [1;34m4[0m:     binding.pry
     [1;34m5[0m:     user = [1;34;4mUser[0m.find_by([35memail[0m: session_params[[33m:email[0m])
 =>  [1;34m6[0m:     [32mif[0m user
     [1;34m7[0m:         [32mif[0m (session_params[[33m:social_login[0m])
     [1;34m8[0m:             respond_to [32mdo[0m |format|
     [1;34m9[0m:                 format.json [32mdo[0m
    [1;34m10[0m:                     render [33m:json[0m => user.to_json([33m:include[0m => [[33m:professional[0m] )
    [1;34m11[0m:                 [32mend[0m
    [1;34m12[0m:             [32mend[0m
    [1;34m13[0m:         [32melse[0m
    [1;34m14[0m:             [32mif[0m (user.authenticate(session_params[[33m:password_digest[0m]))
    [1;34m15[0m:                 respond_to [32mdo[0m |format|
    [1;34m16[0m:                     format.json [32mdo[0m
    [1;34m17[0m:                         render [33m:json[0m => user.to_json([33m:include[0m => [[33m:professional[0m] )
    [1;34m18[0m:                     [32mend[0m
    [1;34m19[0m:                 [32mend[0m
    [1;34m20[0m:             [32melse[0m
    [1;34m21[0m:                 render [35mjson[0m: { [35merror[0m: [31m[1;31m'[0m[31mIncorrect credentials[1;31m'[0m[31m[0m }, [35mstatus[0m: [1;34m401[0m
    [1;34m22[0m:             [32mend[0m    
    [1;34m23[0m:         [32mend[0m
    [1;34m24[0m:     [32melse[0m
    [1;34m25[0m:         render [35mjson[0m: { [35merror[0m: [31m[1;31m'[0m[31mUser does not exist[1;31m'[0m[31m[0m }, [35mstatus[0m: [1;34m404[0m      
    [1;34m26[0m:     [32mend[0m
    [1;34m27[0m: [32mend[0m

