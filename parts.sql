-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datas`
--

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `part_no` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `part_no`, `description`, `quantity`, `image`) VALUES
(1, '10932780', 'Gear Assy', 3, 'Screenshot 2024-10-23 093707.png'),
(2, '6774477', 'Housing Assy Transmission', 3, 'Screenshot 2024-10-23 093657.png'),
(3, 'CPR-109620', 'Kit Burner Replacement', 3, 'Screenshot 2024-10-23 093724.png'),
(4, 'G704060', 'Valve Assy Fuel Control', 3, 'Screenshot 2024-10-23 093733.png'),
(5, '5106223', 'Seal Plain Encased', 6, 'Screenshot 2024-10-23 093759.png'),
(6, '5116229', 'Seal Plain Encased (Std)', 3, 'Screenshot 2024-10-23 093808.png'),
(7, '8928753', 'Cover Manifold', 6, 'Screenshot 2024-10-23 093822.png'),
(8, '23503156', 'Blanket Turbo', 3, 'Screenshot 2024-10-23 093831.png'),
(9, '10946817', 'Seal Oil', 3, 'Screenshot 2024-10-23 093840.png'),
(10, '10875107-1', 'SEAL OIL OUT PUT SHAFT', 6, 'Screenshot 2024-10-23 093849.png'),
(11, '10875109', 'Seal Plain Encased', 3, 'Screenshot 2024-10-23 093856.png'),
(12, '74793', 'Fan & Hub Assy', 3, 'Screenshot 2024-10-23 093922.png'),
(13, '5134526', 'Shaft ASM', 3, 'Screenshot 2024-10-23 093930.png'),
(14, '10875507', 'Adapter Speedometer', 3, 'Screenshot 2024-10-23 093941.png'),
(15, '5116224', 'Seal Plain Encased', 3, 'Screenshot 2024-10-23 093955.png'),
(16, '5138786', 'Spacer Oil Pump Seal', 3, 'Screenshot 2024-10-23 094007.png'),
(17, '5199811', 'Part Kit Cyl Head', 6, 'Screenshot 2024-10-23 094021.png'),
(18, '5228774', 'Fuel Injector Assy', 3, 'Screenshot 2024-10-23 094100.png'),
(19, '8763161', 'Seal Plain Encased', 6, 'Screenshot 2024-10-23 094256.png'),
(20, '8925751', 'Coller Thrust', 3, 'Screenshot 2024-10-23 094307.png'),
(21, '10865913', 'Coupling Assy', 8, 'Screenshot 2024-10-23 094320.png'),
(22, '10918065', 'Pad Cushion', 3, 'Screenshot 2024-10-23 094327.png'),
(23, '54733-G1', 'Igniter Assy', 3, 'Screenshot 2024-10-23 094335.png'),
(24, '77-400', 'GASKET', 6, 'Screenshot 2024-10-23 094347.png'),
(25, '77-500', 'GASKET', 6, 'Screenshot 2024-10-23 094358.png'),
(26, '78-500MS', 'Clamp Loop', 6, 'Screenshot 2024-10-24 121044.png'),
(27, '5199527', 'Tube Kit', 18, 'Screenshot 2024-10-24 121050.png'),
(28, '5197176', 'Exhaust Valve', 72, 'Screenshot 2024-10-24 121059.png'),
(29, '8925269', 'Rocker Cover (R Bank)', 3, 'Screenshot 2024-10-24 121106.png'),
(30, '7710527', 'Ball Bearing', 3, 'Screenshot 2024-10-24 121118.png'),
(31, '5703779', 'Part Kit Transfer Gear Case', 3, 'Screenshot 2024-10-24 121126.png'),
(32, '5135721', 'Element Pad', 3, 'Screenshot 2024-10-24 121132.png'),
(33, '10933028', 'Hose Asm', 3, 'Screenshot 2024-10-24 121137.png'),
(34, '10932811-2', 'Link Connecting Rigid', 3, 'Screenshot 2024-10-24 121149.png'),
(35, '10932440-2', 'Hose Pipe', 3, 'Screenshot 2024-10-24 121159.png'),
(36, '4221341', 'Elbow Flange To Joint', 3, 'Screenshot 2024-10-24 121206.png'),
(37, '4221347', 'Elbow Flange To Joint', 3, 'Screenshot 2024-10-24 121211.png'),
(38, '8744012', 'SWING VALVE', 3, 'Screenshot 2024-10-24 121219.png'),
(39, '10861444', 'Bearing', 3, 'Screenshot 2024-10-24 121225.png'),
(40, '10866033', 'Pad', 3, 'Screenshot 2024-10-24 121239.png'),
(41, '11589286', 'Transmitter', 3, 'Screenshot 2024-10-24 121244.png'),
(42, '11673042', 'Clamp', 3, 'Screenshot 2024-10-24 121252.png'),
(43, '12313890', 'Coupling Clamp', 3, 'Screenshot 2024-10-24 121257.png'),
(44, 'MS15003-1', 'Fitting Pipe Thread', 78, 'Screenshot 2024-10-24 121305.png'),
(45, 'MS35670-3A', 'Valve Safety Relief', 78, 'Screenshot 2024-10-24 121311.png'),
(46, 'MS51300-1', 'Cap Fuel Tank Combat Vehicle', 3, 'Screenshot 2024-10-24 121330.png'),
(47, '7356889', 'Shaft ASM', 3, 'Screenshot 2024-10-24 121337.png'),
(48, '8337143', 'Shaft Assy', 3, 'Screenshot 2024-10-24 121344.png'),
(49, 'MS24532-2', 'Meter Arbitrary Scale', 3, 'Screenshot 2024-10-24 121349.png'),
(50, 'MS35206-210', 'Screw Machine', 6, 'Screenshot 2024-10-24 121355.png'),
(51, 'MS51303-2', 'BO Marker', 3, 'Screenshot 2024-10-24 122507.png'),
(52, '11662993', 'Radiator Engine A1', 3, 'Screenshot 2024-10-24 122512.png'),
(53, '11669369', 'Radiator Engine A2', 3, 'Screenshot 2024-10-24 122517.png'),
(54, '74829', 'Connector & Lead Assy', 6, 'Screenshot 2024-10-24 122526.png'),
(55, '1622744', 'Clamp Hose', 6, NULL),
(56, '5100032', 'Ignition Coil Assy', 6, 'Screenshot 2024-10-24 122544.png'),
(57, '5102257', 'Fork Coupling', 6, 'Screenshot 2024-10-24 122558.png'),
(58, '5106240', 'Thermostat Flow Control', 6, 'Screenshot 2024-10-24 122603.png'),
(59, '5107812', 'Shell Set Main O/s 0.010', 12, 'Screenshot 2024-10-24 122610.png'),
(60, '5107813', 'Shell Set Main O/s 0.020', 12, 'Screenshot 2024-10-24 122614.png'),
(61, '5121071', 'SPACER', 6, 'Screenshot 2024-10-24 122625.png'),
(62, '5144367', 'Heater Assy', 6, NULL),
(63, '5145826', 'Bracket Mounting', 6, 'Screenshot 2024-10-24 122631.png'),
(64, '5147883', 'Hose Assy', 6, 'Screenshot 2024-10-24 122640.png'),
(65, '5179969', 'Elbow Pipe To Tube', 6, NULL),
(66, '5198043', 'Part Kit Blower Installation', 6, 'Screenshot 2024-10-24 122646.png'),
(67, '5198412', 'Half Set Sleeve 0.010 U/Size', 12, 'Screenshot 2024-10-24 122652.png'),
(68, '5198529', 'Part Kit Engine Poppet V', 72, 'Screenshot 2024-10-24 122659.png'),
(69, '5574533', 'Filter Assy Fluid Pressure', 6, 'Screenshot 2024-10-24 122717.png'),
(70, '5575169', 'Shell Assy, Filter Body', 6, 'Screenshot 2024-10-24 122724.png'),
(71, '5575893', 'Shell Assy', 6, 'Screenshot 2024-10-24 122731.png'),
(72, '5703660', 'Part Kit Differential', 6, 'Screenshot 2024-10-24 122736.png'),
(73, '6436254', 'Filter Head', 6, 'Screenshot 2024-10-24 122746.png'),
(74, '6770916', 'Plate Clutch', 6, 'Screenshot 2024-10-24 122751.png'),
(75, '6774322', 'Cover', 6, 'Screenshot 2024-10-24 122756.png'),
(76, '6774462', 'Pump Rotary Transmission', 6, 'Screenshot 2024-10-24 122801.png'),
(77, '6777851', 'Front Oil Pump', 6, 'Screenshot 2024-10-24 122808.png'),
(78, '6778050', 'Seal', 6, 'Screenshot 2024-10-24 122842.png'),
(79, '6832589', 'Plate Clutch', 30, 'Screenshot 2024-10-24 122848.png'),
(80, '7962265', 'Lens Red Glass', 6, 'Screenshot 2024-10-24 122854.png'),
(81, '7981885', 'Handle Fire Ext', 6, 'Screenshot 2024-10-24 122859.png'),
(82, '8668636', 'Shield Periscope', 6, 'Screenshot 2024-10-24 124223.png'),
(83, '8747986', 'Body Black Out Head Light', 6, 'Screenshot 2024-10-24 124228.png'),
(84, '8747987', 'Lamp Unit', 6, 'Screenshot 2024-10-24 124233.png'),
(85, '8756299', 'Seal (Arm Support)', 30, 'Screenshot 2024-10-24 124237.png'),
(86, '8756560', 'Pin Connecting Track', 387, 'Screenshot 2024-10-24 124243.png'),
(87, '8756580', 'Nut Self Locking', 774, 'Screenshot 2024-10-24 124252.png'),
(88, '8756933', 'Housing Bearing Drive', 6, 'Screenshot 2024-10-24 124256.png'),
(89, '8921741', 'Seal Exhaust Valve', 72, 'Screenshot 2024-10-24 124300.png'),
(90, '10861293', 'Filler Neck', 6, 'Screenshot 2024-10-24 124308.png'),
(91, '10861391', 'Access Cover Mechanism', 6, 'Screenshot 2024-10-24 124318.png'),
(92, '10861448', 'Pump Assy', 6, 'Screenshot 2024-10-24 124323.png'),
(93, '10861595', 'Disk Assy', 6, 'Screenshot 2024-10-24 124326.png'),
(94, '10874714', 'Wire Rape Assy', 6, 'Screenshot 2024-10-24 124336.png'),
(95, '10874979', 'Switch Pressure', 6, 'Screenshot 2024-10-24 124341.png'),
(96, '10875161', 'Ring Retaining', 6, 'Screenshot 2024-10-24 124355.png'),
(97, '11633530', 'Access Cover Mechanism', 6, 'Screenshot 2024-10-24 124400.png'),
(98, '11633532', 'Access Cover Mechanism', 6, 'Screenshot 2024-10-24 124404.png'),
(99, '11647005', 'Cock Drain', 6, 'Screenshot 2024-10-24 124409.png'),
(100, '11669373-PK', 'Wheel Idler', 6, 'Screenshot 2024-10-24 124417.png'),
(101, '11669495', 'Insert Screw Mechanism', 48, 'Screenshot 2024-10-24 124422.png'),
(102, '12252707', 'Seat Vehicular', 6, NULL),
(103, '12253533', 'Exhaust Pipe Mechanism', 6, 'Screenshot 2024-10-24 124426.png'),
(104, '12268725', 'Control Valve Assy', 6, NULL),
(105, '12268810', 'Transmitter', 6, 'Screenshot 2024-10-24 124437.png'),
(106, '12354682', 'Adaptor Straight (Elbow Pipe)', 12, NULL),
(107, '10932811-3', 'Link Connecting Rigid', 6, 'Screenshot 2024-10-24 124442.png'),
(108, '10947623-1', 'Valve Control (Fire Ext)', 6, 'Screenshot 2024-10-24 124448.png'),
(109, '11589520-5', 'Control Assy Cable (Fule Shut Off Cable)', 6, 'Screenshot 2024-10-24 125232.png'),
(110, '79-500MS', 'Retainer', 6, 'Screenshot 2024-10-24 125236.png'),
(111, 'A52562-G1', 'Igniter Assy (Model Ds4200-G1)', 6, 'Screenshot 2024-10-24 125242.png'),
(112, 'MS21044N06', 'Nut Lock', 90, 'Screenshot 2024-10-24 125246.png'),
(113, 'MS21044N6', 'Nut Self Locking', 234, 'Screenshot 2024-10-24 125250.png'),
(114, 'MS21044N7', 'Nut Self Locking Hex', 12, 'Screenshot 2024-10-24 125302.png'),
(115, 'MS21083N5', 'NUT, LOCK', 27, 'Screenshot 2024-10-24 125307.png'),
(116, 'MS24537-1', 'Transmitter Temp Elect', 6, 'Screenshot 2024-10-24 125312.png'),
(117, 'MS24543-2', 'Indicator Temperature', 6, 'Screenshot 2024-10-24 125317.png'),
(118, 'MS35916-2', 'Techometar Mechanical', 6, 'Screenshot 2024-10-24 125326.png'),
(119, 'MS39021-2', 'Speedo Meter', 6, 'Screenshot 2024-10-24 125330.png'),
(120, 'MS39061-1', 'Switch Toggle', 9, 'Screenshot 2024-10-24 125347.png'),
(121, 'MS39061-2', 'Switch Toggle', 6, 'Screenshot 2024-10-24 125351.png'),
(122, 'MS39061-7', 'Switch Toggle', 6, 'Screenshot 2024-10-24 125356.png'),
(123, 'MS39068-5', 'Circuit Breaker', 6, 'Screenshot 2024-10-24 125404.png'),
(124, 'MS51113-1', 'Switch Light', 6, 'Screenshot 2024-10-24 125408.png'),
(125, 'MS51922-49', 'Lock Nut', 9, 'Screenshot 2024-10-24 125412.png'),
(126, 'MS53063-4', 'Indicator Air Cleaner', 6, 'Screenshot 2024-10-24 125418.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
