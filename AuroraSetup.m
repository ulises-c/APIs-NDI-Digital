% aurora_device = AuroraDriver('/dev/ttyUSB0');
% aurora_device = AuroraDriver('/dev/cu.usbserial-1320');
aurora_device = AuroraDriver('/dev/tty.usbserial-1320');
serial_present = instrfind;

if(~isempty(serial_present)) 
    
    aurora_device.openSerialPort();
    aurora_device.init();
    aurora_device.detectAndAssignPortHandles();
    aurora_device.initPortHandleAll();
    aurora_device.enablePortHandleDynamicAll();
    aurora_device.startTracking();
    aurora_device.BEEP('1');
    aurora_device.updateSensorDataAll();
%     aurora_device.GET(sensor_status)
    aurora_device.stopTracking();
    delete(aurora_device);
    
end
