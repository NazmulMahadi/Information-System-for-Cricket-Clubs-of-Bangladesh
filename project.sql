
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(20) NOT NULL,
  `name_of_club` varchar(100) DEFAULT NULL,
  `date_of_establishment` date DEFAULT NULL,
  `a_house_no` varchar(100) DEFAULT NULL,
  `a_location` varchar(100) DEFAULT NULL,
  `a_street` varchar(100) DEFAULT NULL,
  `a_thana` varchar(100) DEFAULT NULL,
  `a_district` varchar(100) DEFAULT NULL,
  `a_post_code` int(20) DEFAULT NULL,
  `name_of_president` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `name_of_club`, `date_of_establishment`, `a_house_no`, `a_location`, `a_street`, `a_thana`, `a_district`, `a_post_code`, `name_of_president`) VALUES
(1, 'Rangpur Riders', '2014-01-10', 'b-block', 'Mirpur', 'Mirpur-1', 'Mirpur', 'Dhaka', 1217, 'Ishtiaq Kadir'),
(2, 'Chittagong Vikings', '2015-12-01', 'mirpur-1', 'Mirpur', 'sewrapara', 'Mirpur', 'Dhaka', 1217, 'DBL Sports Club'),
(10, 'Rangpur Riders', '2012-10-30', 'b-block', 'Mirpur', 'Mirpur-1', 'Mirpur', 'Dhaka', 1217, 'atiqur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `contract_id` int(20) NOT NULL,
  `club_id` int(20) NOT NULL,
  `club_name` varchar(200) DEFAULT NULL,
  `f_first_name` varchar(200) DEFAULT NULL,
  `f_last_name` varchar(100) DEFAULT NULL,
  `p_id` int(20) DEFAULT NULL,
  `a_first_name` varchar(200) NOT NULL,
  `a_last_name` varchar(200) DEFAULT NULL,
  `a_designation` varchar(100) DEFAULT NULL,
  `c_start_date` date DEFAULT NULL,
  `c_end_date` date DEFAULT NULL,
  `c_amount` float DEFAULT NULL,
  `contract_w1` varchar(200) NOT NULL,
  `contract_w2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`contract_id`, `club_id`, `club_name`, `f_first_name`, `f_last_name`, `p_id`, `a_first_name`, `a_last_name`, `a_designation`, `c_start_date`, `c_end_date`, `c_amount`, `contract_w1`, `contract_w2`) VALUES
(1, 1, 'Ipl', 'Mustafizur ', 'rahman', 1, 'Ishtiaq', 'Kadir', 'Dealer', '2017-08-20', '2018-10-31', 500000, 'ishtiaq', 'kabir'),
(2, 2, 'BPL', 'Tamim', 'Iqbal', 2, 'Dudu', 'Moni', 'Dud Dealer', '2017-04-12', '2018-09-04', 1000000, 'ishtiaq', 'kabir'),
(3, 3, 'Cpl', 'Sakib ', 'Al Hasan', 12, 'Imtiaz', 'Kadir', 'Businessman', '2016-11-08', '2017-08-07', 200000, 'mahfil', 'Sakib'),
(4, 4, 'Npl', 'Mashrafee', 'Mortaza', 33, 'Imtiaz', 'Kadir', 'Businessman', '2014-03-20', '2017-05-02', 205000, 'abir', 'mahmud'),
(5, 5, 'cpl', 'Mahmudullah', 'Riad', 34, 'ishtiaq', 'Kadir', 'Dealer', '2014-03-20', '2017-05-02', 205000, 'sakib', 'ali'),
(6, 10, 'Ipl', 'sabbir', 'rahman', 133, 'Ishtiaq', 'Kadir', 'Businessman', '2017-02-20', '2018-04-11', 200000, 'ishtiaq', 'kabir');

-- --------------------------------------------------------

--
-- Table structure for table `educational_qua`
--

CREATE TABLE `educational_qua` (
  `name_of_degree` varchar(50) DEFAULT NULL,
  `department` varchar(100) NOT NULL,
  `board` varchar(50) DEFAULT NULL,
  `year` tinytext,
  `result` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educational_qua`
--

INSERT INTO `educational_qua` (`name_of_degree`, `department`, `board`, `year`, `result`) VALUES
('Bsc', 'Cse', 'north south university', '2018', 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(20) NOT NULL,
  `serial_num` int(25) NOT NULL,
  `due_date` date NOT NULL,
  `payment_date` date NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `serial_num`, `due_date`, `payment_date`, `amount`) VALUES
(12, 3, '2017-09-20', '2018-12-08', 2000000),
(33, 10, '2018-04-20', '2018-08-04', 600000),
(34, 4, '2018-04-20', '2018-08-04', 700000),
(45, 78, '2017-04-20', '2018-08-10', 4500000),
(55, 45, '2018-04-20', '2018-08-04', 700000),
(56, 90, '2019-08-04', '2018-08-16', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `player_registration`
--

CREATE TABLE `player_registration` (
  `p_id` int(200) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `fathers_name` varchar(30) NOT NULL,
  `mothers_name` varchar(30) NOT NULL,
  `p_age` int(10) NOT NULL,
  `pre_houseno` varchar(10) NOT NULL,
  `pre_location` varchar(20) NOT NULL,
  `pre_village` varchar(20) NOT NULL,
  `pre_thana` varchar(20) NOT NULL,
  `pre_district` varchar(20) NOT NULL,
  `pre_postcode` int(20) NOT NULL,
  `per_houseno` varchar(10) NOT NULL,
  `per_location` varchar(30) NOT NULL,
  `per_village` varchar(30) NOT NULL,
  `per_thana` varchar(30) NOT NULL,
  `per_district` varchar(30) NOT NULL,
  `per_postcode` int(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `b_club_name` varchar(30) NOT NULL,
  `b_opponent_club` varchar(30) NOT NULL,
  `b_event_id` int(20) NOT NULL,
  `b_match_id` int(20) NOT NULL,
  `b_runs` int(20) NOT NULL,
  `b_wickets` int(20) NOT NULL,
  `membership` varchar(20) NOT NULL,
  `signature` text NOT NULL,
  `date_of_player` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_registration`
--

INSERT INTO `player_registration` (`p_id`, `first_name`, `last_name`, `fathers_name`, `mothers_name`, `p_age`, `pre_houseno`, `pre_location`, `pre_village`, `pre_thana`, `pre_district`, `pre_postcode`, `per_houseno`, `per_location`, `per_village`, `per_thana`, `per_district`, `per_postcode`, `date_of_birth`, `b_club_name`, `b_opponent_club`, `b_event_id`, `b_match_id`, `b_runs`, `b_wickets`, `membership`, `signature`, `date_of_player`) VALUES
(1, 'md.ishtiaq', 'kadir', 'zaher uddin miah', 'mahbuba begum', 22, '16/kha', 'Modhubag', 'Moghbazar', 'Ramna', 'dhaka', 1217, '16/kha', 'modhubag', 'mogbazar', 'ramna', 'Dhaka', 1217, '1995-11-03', 'Duronto Rajshahi', 'Comilla riders', 1, 1, 100, 2, 'Ipl', 'ishtiaq', '2018-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `previous_his`
--

CREATE TABLE `previous_his` (
  `prev_club_name` varchar(200) NOT NULL,
  `prev_from` date DEFAULT NULL,
  `prev_to` date DEFAULT NULL,
  `total_runs` int(20) DEFAULT NULL,
  `total_wickets` int(20) DEFAULT NULL,
  `team_leader` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `previous_his`
--

INSERT INTO `previous_his` (`prev_club_name`, `prev_from`, `prev_to`, `total_runs`, `total_wickets`, `team_leader`) VALUES
('Rangpur Riders', '2014-05-20', '2017-06-21', 222, 10, 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contract_id`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `player_registration`
--
ALTER TABLE `player_registration`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `b_event_id` (`b_event_id`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `player_registration`
--
ALTER TABLE `player_registration`
  MODIFY `p_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

