var ScriptVars = Java.type('org.zaproxy.zap.extension.script.ScriptVars');

function sendingRequest(msg, initiator, helper) {
  var auth = ScriptVars.getGlobalVar('authHeader');
  msg.getRequestHeader().setHeader('Authorization', 'Bearer ' + auth);
}

function responseReceived(msg, initiator, helper) {}
