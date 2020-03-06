'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const editor_1 = require("./editor");
const jsx_1 = require("./modules/jsx");
const statless_to_stateful_1 = require("./modules/statless-to-stateful");
const stateful_to_stateless_1 = require("./modules/stateful-to-stateless");
const extract_to_file_1 = require("./modules/extract-to-file");
const extract_to_component_1 = require("./modules/extract-to-component");
const wrap_with_conditional_1 = require("./modules/wrap-with-conditional");
class CompleteActionProvider {
    provideCodeActions() {
        const exportToFileAction = {
            command: 'extension.glean',
            title: 'Export to File'
        };
        const text = editor_1.selectedText();
        if (jsx_1.isJSX(text)) {
            return [{
                    command: 'extension.glean.react.extract-component-to-file',
                    title: 'Extract Component to File'
                }, {
                    command: 'extension.glean.react.extract-component',
                    title: 'Extract Component'
                }, {
                    command: 'extension.glean.react.render-conditionally',
                    title: 'Render Conditionally'
                }];
        }
        if (statless_to_stateful_1.isStatelessComp(text)) {
            return [
                exportToFileAction,
                {
                    command: 'extension.glean.react.stateless-to-stateful',
                    title: 'Convert Function to Class Component'
                }
            ];
        }
        if (stateful_to_stateless_1.isStatefulComp(text)) {
            return [exportToFileAction, {
                    command: 'extension.glean.react.stateful-to-stateless',
                    title: 'Convert Class to Function Component'
                }];
        }
        return [exportToFileAction];
    }
}
exports.CompleteActionProvider = CompleteActionProvider;
function activate(context) {
    context.subscriptions.push(vscode.languages.registerCodeActionsProvider({ pattern: '**/*.*' }, new CompleteActionProvider()));
    vscode.commands.registerCommand('extension.glean', extract_to_file_1.extractToFile);
    vscode.commands.registerCommand('extension.glean.react.extract-component-to-file', extract_to_component_1.extractJSXToComponentToFile);
    vscode.commands.registerCommand('extension.glean.react.extract-component', extract_to_component_1.extractJSXToComponent);
    vscode.commands.registerCommand('extension.glean.react.render-conditionally', wrap_with_conditional_1.wrapJSXWithCondition);
    vscode.commands.registerCommand('extension.glean.react.stateless-to-stateful', statless_to_stateful_1.statelessToStatefulComponent);
    vscode.commands.registerCommand('extension.glean.react.stateful-to-stateless', stateful_to_stateless_1.statefulToStatelessComponent);
}
exports.activate = activate;
// this method is called when your extension is deactivated
function deactivate() {
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map