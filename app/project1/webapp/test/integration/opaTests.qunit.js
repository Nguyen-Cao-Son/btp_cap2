sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/DevicesList',
		'project1/test/integration/pages/DevicesObjectPage'
    ],
    function(JourneyRunner, opaJourney, DevicesList, DevicesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDevicesList: DevicesList,
					onTheDevicesObjectPage: DevicesObjectPage
                }
            },
            opaJourney.run
        );
    }
);