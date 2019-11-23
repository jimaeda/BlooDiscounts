function ValidaCampos()
  {
    let valido = true;
    let erro = {msg: ''};
    valido = valido && ValidaCamposTexto(erro);
    valido = valido && ValidaCamposNumero(erro);
    valido = valido && ValidaDataNascimento(erro);

    if(!valido) alert(erro.msg);
    return valido;
  }

  function ValidaCamposTexto(erro){
    let valido = true;
    $("input[type='text'][required]").each(function()
    {
      valido = valido && this.value.trim() !== "";
      erro.msg +=  this.value.trim() !== "" ? '' : 'Verifique o campo ' + $(this).parent().find("span").html() + '\n';
    });
    return valido;
  }

  function ValidaCamposNumero(erro){
    let valido = true;
    $("input[type='number'][required]").each(function()
    {
      valido = valido && this.value > 0;
      erro.msg += this.value > 0 ? '' : 'Verifique o campo ' + $(this).parent().find("span").html() + '\n';
    });
    return valido;
  }

  function ValidaDataNascimento(erro){
    let dataNascimento = $('#user_birthdate').val();
    dataNascimento = dataNascimento.split("-");
    dataNascimento = new Date(dataNascimento[0], dataNascimento[1] - 1, dataNascimento[2]);
    if(dataNascimento > $.now() || dataNascimento.getYear() == $.now().getYear()){
      erro.msg += "Verifique sua Data de Nascimento \n";
      return false;
    }
    return true;
  }

  $(document).ready(function(){
    $("#btn_salvar").click(function(){
      let valido = true;
      $("input[required]").each(function()
      {
        valido = !this.validity.valueMissing;
      });
      if(!valido)
        alert("Os campos em vermelho são obrigatórios");
    });
    $('#edit_user').submit(function(){
      return ValidaCampos();
    });
  });
