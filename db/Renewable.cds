namespace sap.applicaiton.renewable ; 
using { managed } from '@sap/cds/common';


 entity Devices : managed {
  key ID            : UUID;             // Mã định danh duy nhất của thiết bị
  name              : String(100);      // Tên thiết bị (VD: Solar Panel A1)
  type              : String(50);       // Loại thiết bị (Solar Panel, Inverter, Battery, etc.)
  status            : String(20);       // Trạng thái (Active, Inactive, Maintenance)
  installationDate  : Date;             // Ngày lắp đặt
  location_ID       : Association to Locations; // Liên kết đến địa điểm lắp đặt
  lastMaintenance   : Date;             // Ngày bảo trì gần nhất
} 

entity Locations {
  key ID         : UUID;              // Mã định danh duy nhất của địa điểm
  name           : String(100);       // Tên địa điểm (VD: Nhà máy Bắc Ninh)
  address        : String(255);       // Địa chỉ đầy đủ
  capacity       : Decimal(10,2);     // Công suất tối đa (kW)
  devices        : Composition of many Devices ; // Liên kết đến các thiết bị
}

entity PerformanceLogs {
  key ID           : UUID;             // Mã định danh duy nhất của nhật ký
  device_ID        : Association to Devices; // Liên kết tới thiết bị
  date             : Date;             // Ngày ghi nhận dữ liệu
  energyProduced   : Decimal(10,2);    // Sản lượng điện (kWh)
  efficiency       : Decimal(5,2);     // Hiệu suất hoạt động (%)
}

entity MaintenanceRecords : managed {
  key ID           : UUID;              // Mã định danh duy nhất của bản ghi bảo trì
  device_ID        : Association[1..*] to Devices  ; // Liên kết tới thiết bị
  maintenanceDate  : Date;              // Ngày bảo trì
  performedBy      : String(100);       // Người thực hiện
  issueReported    : String(255);       // Vấn đề được báo cáo
  resolution       : String(255);       // Hướng giải quyết
}
