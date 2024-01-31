sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'task02',
            componentId: 'studentObjectPage',
            contextPath: '/student'
        },
        CustomPageDefinitions
    );
});