{"id":"4750f81e-138c-49fb-8c6a-9a12ae20bd1a","name":"Task-taskform.frm","model":{"taskName":"Task","processId":"MakerCheckerNewProject.TestNewProcess","name":"task","properties":[{"name":"baseList","typeInfo":{"type":"OBJECT","className":"java.lang.Object","multiple":true},"metaData":{"entries":[{"name":"field-readOnly","value":true},{"name":"field-type","value":"MultipleInput"}]}},{"name":"delta","typeInfo":{"type":"OBJECT","className":"java.lang.Object","multiple":true},"metaData":{"entries":[{"name":"field-readOnly","value":true},{"name":"field-type","value":"MultipleInput"}]}},{"name":"simulationList","typeInfo":{"type":"OBJECT","className":"java.lang.Object","multiple":true},"metaData":{"entries":[{"name":"field-readOnly","value":true},{"name":"field-type","value":"MultipleInput"}]}},{"name":"summaryOfChanges","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"approved","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"id":"field_432823395831288E11","name":"approved","label":"Approved","required":false,"readOnly":false,"validateOnChange":true,"binding":"approved","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"},{"pageSize":10,"id":"field_29498","name":"baseList","label":"BaseList","required":false,"readOnly":true,"validateOnChange":true,"helpMessage":"","binding":"baseList","standaloneClassName":"java.lang.Object","code":"MultipleInput","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.lists.input.impl.StringMultipleInputFieldDefinition"},{"pageSize":10,"id":"field_6187","name":"simulationList","label":"SimulationList","required":false,"readOnly":true,"validateOnChange":true,"helpMessage":"","binding":"simulationList","standaloneClassName":"java.lang.Object","code":"MultipleInput","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.lists.input.impl.StringMultipleInputFieldDefinition"},{"maxLength":100,"placeHolder":"SummaryOfChanges","id":"field_98456","name":"summaryOfChanges","label":"SummaryOfChanges","required":false,"readOnly":true,"validateOnChange":true,"helpMessage":"","binding":"summaryOfChanges","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003cspan style\u003d\"font-size: xx-large;\"\u003e\u003chr\u003e\u003c/span\u003e\u003cdiv style\u003d\"text-align: center;\"\u003e\u003cspan style\u003d\"font-size: xx-large;\"\u003eChecker Review\u0026nbsp;\u003c/span\u003e\u003c/div\u003e\u003cspan style\u003d\"font-size: xx-large;\"\u003e\u003chr\u003e\u003c/span\u003e"}}]}]},{"height":"12","properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_98456","form_id":"4750f81e-138c-49fb-8c6a-9a12ae20bd1a"}}]}]},{"height":"12","properties":{},"layoutColumns":[{"span":"6","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_29498","form_id":"4750f81e-138c-49fb-8c6a-9a12ae20bd1a"}}]},{"span":"6","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_6187","form_id":"4750f81e-138c-49fb-8c6a-9a12ae20bd1a"}}]}]},{"height":"12","properties":{},"layoutColumns":[{"span":"12","height":"12","properties":{},"rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_432823395831288E11","form_id":"4750f81e-138c-49fb-8c6a-9a12ae20bd1a"}}]}]}]}}