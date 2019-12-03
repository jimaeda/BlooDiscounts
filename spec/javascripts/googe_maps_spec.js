it('localização atual', function(){
  var container = fixture('.box > input[type="button"][value="Click me!"]');
  expect(container.find('.box > input').val()).toEqual('Click me!');
});
