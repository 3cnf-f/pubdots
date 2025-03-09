```space-script
```space-script
silverbullet.registerCommand({name: "foldsix"}, async () => {
  const thistext = await editor.getText();
  const thistextarray = thistext.split("\n");
  for (let [linenr,a] of thistextarray.entries()) {
    if (a.startsWith("######")||a.search("˅")!=-1 ){
      
      
       await editor.flashNotification("Found foldsix or .-.. at  ".concat(String(linenr)) );
      const wherewasi = await editor.getCursor(); 
      await editor.moveCursorToLine(linenr+1);
      await editor.toggleFold();
      await editor.moveCursor(wherewasi);
      
    }
  }
    
});
\\```
```
