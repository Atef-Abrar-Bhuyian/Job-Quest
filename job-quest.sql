-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2023 at 03:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job-quest`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_fin`
--

CREATE TABLE `acc_fin` (
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `Experience` varchar(20) NOT NULL,
  `acc_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc_fin`
--

INSERT INTO `acc_fin` (`Title`, `Description`, `Location`, `Experience`, `acc_id`) VALUES
('Account Manager', 'Excellent communication skills, both spoken and written in English and Bengali.\r\nHave expertise in MS Office, Adobe Photoshop, and Adobe Illustrator with knowledge of social media.\r\nSalary: Tk. 20000 ', 'Santinagor Mor. Paltan Dhaka.', 'At least 5 years.', 1),
('Executive (Accounts & Finance)', 'Responsible for the full cycle of accounting duties or supervision of others in the basic tasks, such as accounts payable and receivable as per supervision of Manager (Accounts & Finance) / Head of Bu', 'Anywhere in Bangladesh', 'At least 2 years.', 2),
('Accounts Officer', 'Age 25 to 35 years\r\nOnly males are allowed to apply\r\nSkills Required: Cost Accounting, Finance & Bank Operation, Finance Management\r\n\r\nTk. 15000 (Monthly)', 'Dhaka', 'At least 2 years', 3),
('Accounts & Tax Associate', 'Preparation of UK Personal Tax Returns of Self-employed clients.\r\nHave a strong understanding of the technical complexities that our clients face and be able to provide clear, concise, and practical a', 'Chittagong ', 'At least 2 years.', 4),
('Executive (Accounts)', 'High Level Expert in Tally-ERP.\r\nMaintain all accounts related books and documents (Cash book, Ledger, Cheque register, Stock register, Salary register, fixed assets register, Advance register, Bank R', 'Sylhet.', 'At least 3 years.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `agro`
--

CREATE TABLE `agro` (
  `agro_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agro`
--

INSERT INTO `agro` (`agro_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Area Sales Manager- Animal Health', 'Excellent communication and interpersonal skills. Strong organizational and time management skills. Ability to work independently and as part of a team.', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(2, 'Deputy Executive / Executive - Research & Development (Rice)', 'Master of Science (MSc) in Genetics and Plant breeding Skills Required: Computer skill, Good communication skills in both Bangla English, leadership and negotiation', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(3, 'In-charge/ Supervisor (Poultry)', 'Diploma (Vocational) in Animal Husbandry, Diploma (Vocational) in poultry Skills Required: Communication', 'Chattogram', 'At least 5 years.'),
(4, 'Executive (Technical Information)', 'Visit the prescribers, hatcheries, and dealers to promote vaccines and products at different locations in the Chattogram, Cumilla, Sylhet, and Mymensingh divisions of Bangladesh.\nSalary:50,000 Tk/-', 'Bhola ,Bangladesh', 'At least 3 years.'),
(5, 'Agricultural Project supervisor', 'Diploma in Agriculture from any reputed institute (Knowledge in Horticulture will be preferable). Skills Required: Gardener, Homestead gardening, Horticulture', 'Cumilla ,Bangladesh', 'At least 2 years.');

-- --------------------------------------------------------

--
-- Table structure for table `alljobs`
--

CREATE TABLE `alljobs` (
  `main_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alljobs`
--

INSERT INTO `alljobs` (`main_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Account Manager', 'Excellent communication skills, both spoken and written in English and Bengali.\r\nHave expertise in MS Office, Adobe Photoshop, and Adobe Illustrator with knowledge of social media.\r\nSalary: Tk. 20000 ', 'Santinagor Mor. Palt', 'At least 5 years.'),
(2, 'Executive (Accounts & Finance)', 'Responsible for the full cycle of accounting duties or supervision of others in the basic tasks, such as accounts payable and receivable as per supervision of Manager (Accounts & Finance) / Head of Bu', 'Anywhere in Banglade', 'At least 2 years.'),
(3, 'Accounts Officer', 'Age 25 to 35 years\r\nOnly males are allowed to apply\r\nSkills Required: Cost Accounting, Finance & Bank Operation, Finance Management\r\n\r\nTk. 15000 (Monthly)', 'Dhaka', 'At least 2 years'),
(4, 'Accounts & Tax Associate', 'Preparation of UK Personal Tax Returns of Self-employed clients.\r\nHave a strong understanding of the technical complexities that our clients face and be able to provide clear, concise, and practical a', 'Chittagong ', 'At least 2 years.'),
(5, 'Executive (Accounts)', 'High Level Expert in Tally-ERP.\r\nMaintain all accounts related books and documents (Cash book, Ledger, Cheque register, Stock register, Salary register, fixed assets register, Advance register, Bank R', 'Sylhet.', 'At least 3 years.'),
(8, 'Area Sales Manager- Animal Health', 'Excellent communication and interpersonal skills. Strong organizational and time management skills. Ability to work independently and as part of a team.', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(9, 'Deputy Executive / Executive - Research & Development (Rice)', 'Master of Science (MSc) in Genetics and Plant breeding Skills Required: Computer skill, Good communication skills in both Bangla English, leadership and negotiation', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(10, 'In-charge/ Supervisor (Poultry)', 'Diploma (Vocational) in Animal Husbandry, Diploma (Vocational) in poultry Skills Required: Communication', 'Chattogram', 'At least 5 years.'),
(11, 'Executive (Technical Information)', 'Visit the prescribers, hatcheries, and dealers to promote vaccines and products at different locations in the Chattogram, Cumilla, Sylhet, and Mymensingh divisions of Bangladesh.\nSalary:50,000 Tk/-', 'Bhola ,Bangladesh', 'At least 3 years.'),
(12, 'Agricultural Project supervisor', 'Diploma in Agriculture from any reputed institute (Knowledge in Horticulture will be preferable). Skills Required: Gardener, Homestead gardening, Horticulture', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(15, 'Deputy Manager/ Assistant Manager - Export, Ispahani Foods Limited', 'Develop and implement export strategies to achieve sales targets and increase market share in target markets. Identify and analyze new markets and opportunities for the company\'s food products.', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(16, 'Officer / Sr. Officer - Import', 'Age 27 to 32 years Only males are allowed to apply Must have sufficient knowledge in import, international business, Custom clearing & forwarding.', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(17, 'Warehouse Executive', 'Maintain warehouse product stock. Deliver product in outlet on time. Make sure every product have price sticker. Anyother task given by the authority.', 'Khulna ,Bangladesh', 'At least 3 years.'),
(18, 'Manager (Commercial & Supply Chain)', 'Manage and oversee the daily operations of the Commercial and Supply Chain department. Create the company\'s supply chain strategy', 'Bhola ,Bangladesh', 'At least 5 years.'),
(19, 'Sr. Executive - Commercial (Logistics)', 'Candidates with graduation from reputed public university are encouraged to apply. Skills Required: Commercial, Export Commercial, Import', 'Cumilla ,Bangladesh', 'At least 3 years.'),
(22, 'Medical Report Writer (Male & Female)', 'The applicants should have experience in the following area(s):\r\nComputer Operator, ECHO, Endoscopic, Medical report as USG\r\nThe applicants should have experience in the following business area(s):\r\nD', 'Dhaka', 'At least 3 years.'),
(23, 'Credentialing Analyst.', 'Analysts must communicate with the client from the USA over phone and through email to accomplish his daily tasks.\r\nCredentialing Analysts have to verify licenses, certificates, and other critical doc', 'Chittagong ,Banglade', 'At least 2 years.'),
(24, 'Typist (Computer Operator)', 'Please apply if you have English, Bangla & Mathematics Equation Typing experience.\r\n\r\nSalary:Negotiable', 'Chittagong ', 'At least 2 years.'),
(25, 'Executive - IT Department', 'Assemble and install necessary hardware and install operating systems and PC software.\r\nTroubleshoot hardware and software issues as needed.\r\nMaintain computers and related equipment for optimal perfo', 'Dhaka,Bangladesh.', 'At least 5 years.'),
(26, 'Data Entry Operator', 'The applicants should have experience in the following area(s):\r\nComputer Operator, Computer skill, Data Entry, Data Entry Operator (Both English & Bengali), Data Entry Operator (English), MICROSOFT O', 'Chittagong,Banglades', 'At least 4 years.'),
(29, 'Graphic Designer', 'Bachelor degree in any discipline Preferred Professional Certification: Graphic Design', 'Dhaka ,Bangladesh', 'At least 5 years.'),
(30, 'Interior Designer', 'Capable to prepare creative Layout Plan, Furniture Layout by Auto CAD and 3D designs by Sketch up, 3D MAX, Vary and Photoshop etc. Drawing preparing as per the requirement with project visit.', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(31, 'CREATIVE DESIGNER (Client Service)', 'Can transform ideas into creative visual. Able to work with the Adobe Suite. Highly skilled in Adobe Photoshop & Illustrator.', 'Khulna ,Bangladesh', 'At least 2 years.'),
(32, 'Biography Writer', 'Conduct extensive research on the subject of the biography Conduct interviews with the teller to gather firsthand accounts and information', 'Cumilla ,Bangladesh', 'At least 3 years.'),
(33, 'Artcam CNC Designer', 'Adobe Illustrator কাজ করতে হবে Auto Cad , Fusion 360 Solid Works , Sheet Cam, Art Cam Aspire Mach3 সম্পর্কে অভিজ্ঞতা থাকতে হবে।', 'Bhola ,Bangladesh', 'At least 4 years.'),
(36, 'Assistant Professor, Department of Architecture', 'The Department of Architecture, BRAC University is inviting applications for the position of Assistant Professor. Department: School of Architecture and Design', 'Dhaka , Bangladesh.', 'At least 2 years.'),
(37, 'Science Teacher (Physics/ Chemistry/ Biology)', 'Planning and implementing Science teaching strategies. Planning lessons as per the grade levels. Explaining science concepts and principles to the students in a comprehensible manner.', 'Sylhet , Bangladesh.', 'At least 3 years.'),
(38, 'Lecturer/ Asst. Professor (Accounting and Finance)', 'Conducting classes following the university guidelines. Counseling students. Conducting extra-curricular activities.', 'Chattogram , Banglad', 'At least 4 years.'),
(39, 'Visa Counselling Officer', 'Handle Customer\'s Inbound And Outbound Calls. Answering Phones And Explaining The Product And Services Offered By The Company. Fix Appointments For Counselling And Generate Walk-In.', 'Khulna ,Bangladesh ', 'At least 2 years.'),
(40, 'Department Head, English (Middle Years and O Level/IGCSE)', 'To ensure the vision for the school is clearly articulated, shared, understood and acted upon effectively by members of the department.', 'Bhola, Bangladesh.', 'At least 4 years.'),
(43, 'Survey Inspector / Surveyor', 'Knowledge of market analysis, sales promotion, customer management principles and practice. Target based job. Ensure sales & collection target.', 'Dhaka ,Bangladesh', 'At least 5 years.'),
(44, 'Sales and Service Engineer (EGP Expert)', 'Installation & Maintenance / Service for Laboratory Instrument Conduct Installation, Commissioning and Operational training on Laboratory instruments', 'Sylhet ,Bangladesh', 'At least 3 years.'),
(45, 'Construction Site Engineer/ Supervisor', 'Diploma in Engineering in Civil Engineering, Bachelor of Science (BSc) in Civil Engineering Skills Required: AutoCAD, Civil Construction works, Civil Engineering and Architecture', 'Bhola ,Bangladesh', 'At least 4 years.'),
(46, 'Marine Engineer ( Operation and Maintenance )', 'Bachelor of Science (BSc) in Naval Architecture and Marine Engineering Skills Required: Marine Engineering, Marine Repairing, marine tecnology', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(47, 'Project In-Charge (Civil)', 'Responsible to supervise, monitor and ensure overall construction works including finishing work as per specification. To prepare project and material planning.', 'Khulna ,Bangladesh', 'At least 4 years.'),
(50, 'Welfare Officer', 'Age 25 to 32 years Only females are allowed to apply Pleasing personality, ability to deal with the workers with a positive attitude. Smart in situation handling.', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(51, 'DGM/GM - Quality (Spinning Division)', 'At least 10 year(s) The applicants should have experience in the following area(s): QUALITY ASSURANCE, Quality Control/ Audit, Quality Inspection', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(52, 'Technical Designer', 'Age at least 25 years • Previous work experience in a sourcing office for Childrenswear products and possess product safety knowledge preferred.', 'Khulna ,Bangladesh', 'At least 5 years.'),
(53, 'Production Planning Analyst', 'Ability to engage vendor and build partnerships under challenging environments and tight deadlines. • Well organized, systematic, strong analytical and problem-solving skills with minimal supervision.', 'Bhola ,Bangladesh', 'At least 3 years.'),
(54, 'Country Manager Bangladesh', 'Both males and females are allowed to apply Strong communication skills and analytical aptitude Excellent organizational and time management skills', 'Cumilla ,Bangladesh', 'At least 4 years.'),
(57, 'Senior DevOps Engineer', 'Create and maintain internal tools to automate common tasks Customer support during the validation phase Ensure the stability and reliability of the solution', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(58, 'Web Developer', 'Both males and females are allowed to apply Skills Required: Web Design and Development The applicants should have experience described in job content.', 'Sylhet ,Bangladesh', 'At least 3 years.'),
(59, 'IT Coordinator', 'Create and maintain our social media presence. Come up with new and creative strategies for growth through digital marketing.', 'Bhola ,Bangladesh', 'At least 4 years.'),
(60, 'Ecommerce Project Manager', 'Successful planning and delivery of full life-cycle ecommerce projects within an e-commerce environment. Manage day to day site performance and issue escalation.', 'Sylhet ,Bangladesh', 'At least 5 years.'),
(61, 'IT Engeniner', 'Bachelor of Science (BSc) in Computer science from any reputed university Preferred Professional Certification: Must share Japanese language course certificate', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(64, 'Surveyor', 'Expert in Topographic survey & Contour survey. Pre/Post Section Measurement (Levelling). Preparation of Project Layout.', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(65, 'Officer - Legal Affairs', 'The applicants should have experience in the following area(s): Labor Law, Legal Affairs, Legal Compliance/ Code of Conduct', 'Bhola ,Bangladesh', 'At least 3 years.'),
(66, 'Associate Lawyer (Documentation)', 'Ability to work independently and in a professional manner. Ability to work as a team member. Knowledge of different sectors of law.', 'Khulna ,Bangladesh', 'At least 4 years.'),
(67, 'Officer/Sr. Officer - Estate & Legal Affairs (Surveyor)', 'Bachelor degree in any discipline Training/Trade Course: Survey Course', 'Sylhet ,Bangladesh', 'At least 5 years.'),
(68, 'Executive (Land & Legal)', 'Bachelor of Law (LLB), Master of Law (LLM) Preferred Professional Certification: Enrollment as an Advocate of Bangladesh Bar Council', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(71, 'Manager (Sales & Marketing)/Head of Sales', 'To take responsibility to achieve targets both in Sales and branding Should have the willingness to visit different regions of the country to appoint dealers and market research.', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(72, 'Sales & Marketing Executive', 'Sales of Ongoing & Ready Apartments Expected to be Target Oriented with related to sales of Ongoing & Ready Apartments and ensure the sales target', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(73, 'Digital Marketing Executive', 'Devise and analyse innovative online promotions to help drive incremental sales and profit. Work with our in-house teams to market our services and increase brand awareness.', 'Bhola ,Bangladesh', 'At least 4 years.'),
(74, 'Executive / Sr. Executive, Sales and Marketing.', 'Graduate / Bachelor\'s degree in Marketing / Business Administration, or related field.', 'Khulna ,Bangladesh', 'At least 3 years.'),
(75, 'Assistant Manager Sales', 'Learn the products and services quickly and know-how that fits client\'s need. Vigorously seek out new sales opportunities through cold calling, networking and other sources and generate leads.', 'Khulna ,Bangladesh', 'At least 2 years.'),
(78, 'Executive - Distribution (Depot In-Charge)', 'Raise requisition to central depot and received product on time Ensure on time invoicing Prepare delivery schedule, van schedule and route plan in coordination with sales team', 'Khulna ,Bangladesh', 'At least 3 years.'),
(79, 'Consultant', 'Candidates should have MBBS with FCPS/DGO/MS degree. Having degree in medical ultrasound will be considered as an additional qualification.', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(80, 'Area Manager (AM)', 'Only males are allowed to apply The candidate should be Self -Motivated, Hardworking and achieve sales targets through guiding and supervising the field forces in anywhere in Bangladesh.', 'Cumilla ,Bangladesh', 'At least 3 years.'),
(81, 'Training Manager (WASH FIT)', '4 years working experience in humanitarian field. Working experience in a similar function is must. Experience is training planning and facilitation', 'Khulna ,Bangladesh', 'At least 2 years.'),
(82, 'Chief Operating Officer (COO)', 'Advise the Board of Directors on matters relating to the operational delivery of the Hospital and clinical support services.', 'Cumilla ,Bangladesh', 'At least 3 years.'),
(85, 'Chief Administrator', 'The applicants should have experience in the following area(s): Excel Expert, NGO The applicants should have experience in the following business area(s): NGO', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(86, 'Senior MEAL Officer - SHINE Project', 'Proven knowledge and experience in Monitoring & Evaluation; related data and information management. Professional level in MS Office package, KOBO, ODK, or other related software.', 'Khulna ,Bangladesh', 'At least 2 years.'),
(87, 'Manager, Child Protection, Bhasan Char, HCMP', 'Age at least 18 years Both males and females are allowed to apply Knowledge on Child Protection, PSS, Play Pedagogy, Life Skills Based Education, Case Management etc', 'Bhola ,Bangladesh', 'At least 3 years.'),
(88, 'Training Manager (WASH FIT)', '4 years working experience in humanitarian field. Working experience in a similar function is must. Experience is training planning and facilitation Professional', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(89, 'Field Facilitator, PSS and CBCPC, Child Protection, Bhasan Char, HCMP', 'Age at least 18 years Both males and females are allowed to apply Manage stress and emotions Be flexible and open to change, adapt to cultural differences Problem solving skills', 'Bhola ,Bangladesh', 'At least 5 years.'),
(92, 'Chief Operating Officer (COO)', 'Only males are allowed to apply Skills Required: Analytical ability, Excellent communication skill, Leadership and interpersonal skills, Problem Solving, Public Speaking Leadership Skill', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(93, 'Shick Esteve Engineer ( Rupshi Foods Limited: Bakers )', 'Operation and troubleshooting of Raw material handling system Daily Report generation of raw material consumption Daily Raw material management', 'Bhola ,Bangladesh', 'At least 4 years.'),
(94, 'Operator, Combo Cup Line ( Rupshi Foods Limited: Bakers)', 'Perform production operation as per respective SOPs Ensure quality parameters through FSSC and HACCP process Perform proper preventive and breakdown maintenance as per SOPs', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(95, 'Production Assistant', 'To ensure the quantity & quality of the product. Ensure day to day monitoring of the production & ensure reporting to the line manager Assist line supervisor during production planning', 'Khulna ,Bangladesh', 'At least 5 years.'),
(96, 'Trainee Officer', 'Age 21 to 30 years Can think logically, have sharp IQ Can learn quickly Can follow instructions clearly', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(99, 'Field Operation Executive', 'FI/FS recruitment, training & supervision Prepare project-wise field budget Work with different stakeholders and clients Arrange field briefing', 'Dhaka ,Bangladesh', 'At least 4 years.'),
(100, 'Assistant Branch Manager', 'Bachelor degree in any discipline, Masters degree in any discipline English and IELTS scores could be preferred.', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(101, 'Educational Consultant', 'bility to handle students and guardians with proper information. Capable to maintain a good relationship with students/parents & local/intl. agents.', 'Khulna ,Bangladesh', 'At least 3 years.'),
(102, 'Senior Counselor (Canada / Australia)', 'Guide students through the application and enrolment process for education abroad Build and maintain relationships with students, their families, and institutions abroad', 'Dhaka ,Bangladesh', 'At least 5 years.'),
(103, 'Project Proposal Writer', 'Excellent writing, editing, and research skills. Strong communication skills and the ability to work collaboratively with multiple stakeholders.', 'Bhola ,Bangladesh', 'At least 2 years.');

-- --------------------------------------------------------

--
-- Table structure for table `commer`
--

CREATE TABLE `commer` (
  `com_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commer`
--

INSERT INTO `commer` (`com_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Deputy Manager/ Assistant Manager - Export, Ispahani Foods Limited', 'Develop and implement export strategies to achieve sales targets and increase market share in target markets. Identify and analyze new markets and opportunities for the company\'s food products.', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(2, 'Officer / Sr. Officer - Import', 'Age 27 to 32 years Only males are allowed to apply Must have sufficient knowledge in import, international business, Custom clearing & forwarding.', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(3, 'Warehouse Executive', 'Maintain warehouse product stock. Deliver product in outlet on time. Make sure every product have price sticker. Anyother task given by the authority.', 'Khulna ,Bangladesh', 'At least 3 years.'),
(4, 'Manager (Commercial & Supply Chain)', 'Manage and oversee the daily operations of the Commercial and Supply Chain department. Create the company\'s supply chain strategy', 'Bhola ,Bangladesh', 'At least 5 years.'),
(5, 'Sr. Executive - Commercial (Logistics)', 'Candidates with graduation from reputed public university are encouraged to apply. Skills Required: Commercial, Export Commercial, Import', 'Cumilla ,Bangladesh', 'At least 3 years.');

-- --------------------------------------------------------

--
-- Table structure for table `data_oper`
--

CREATE TABLE `data_oper` (
  `data_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_oper`
--

INSERT INTO `data_oper` (`data_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Medical Report Writer (Male & Female)', 'The applicants should have experience in the following area(s):\r\nComputer Operator, ECHO, Endoscopic, Medical report as USG\r\nThe applicants should have experience in the following business area(s):\r\nD', 'Dhaka', 'At least 3 years.'),
(2, 'Credentialing Analyst.', 'Analysts must communicate with the client from the USA over phone and through email to accomplish his daily tasks.\r\nCredentialing Analysts have to verify licenses, certificates, and other critical doc', 'Chittagong ,Banglade', 'At least 2 years.'),
(3, 'Typist (Computer Operator)', 'Please apply if you have English, Bangla & Mathematics Equation Typing experience.\r\n\r\nSalary:Negotiable', 'Chittagong ', 'At least 2 years.'),
(4, 'Executive - IT Department', 'Assemble and install necessary hardware and install operating systems and PC software.\r\nTroubleshoot hardware and software issues as needed.\r\nMaintain computers and related equipment for optimal perfo', 'Dhaka,Bangladesh.', 'At least 5 years.'),
(5, 'Data Entry Operator', 'The applicants should have experience in the following area(s):\r\nComputer Operator, Computer skill, Data Entry, Data Entry Operator (Both English & Bengali), Data Entry Operator (English), MICROSOFT O', 'Chittagong,Banglades', 'At least 4 years.');

-- --------------------------------------------------------

--
-- Table structure for table `des_creat`
--

CREATE TABLE `des_creat` (
  `des_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `des_creat`
--

INSERT INTO `des_creat` (`des_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Graphic Designer', 'Bachelor degree in any discipline Preferred Professional Certification: Graphic Design', 'Dhaka ,Bangladesh', 'At least 5 years.'),
(2, 'Interior Designer', 'Capable to prepare creative Layout Plan, Furniture Layout by Auto CAD and 3D designs by Sketch up, 3D MAX, Vary and Photoshop etc. Drawing preparing as per the requirement with project visit.', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(3, 'CREATIVE DESIGNER (Client Service)', 'Can transform ideas into creative visual. Able to work with the Adobe Suite. Highly skilled in Adobe Photoshop & Illustrator.', 'Khulna ,Bangladesh', 'At least 2 years.'),
(4, 'Biography Writer', 'Conduct extensive research on the subject of the biography Conduct interviews with the teller to gather firsthand accounts and information', 'Cumilla ,Bangladesh', 'At least 3 years.'),
(5, 'Artcam CNC Designer', 'Adobe Illustrator কাজ করতে হবে Auto Cad , Fusion 360 Solid Works , Sheet Cam, Art Cam Aspire Mach3 সম্পর্কে অভিজ্ঞতা থাকতে হবে।', 'Bhola ,Bangladesh', 'At least 4 years.');

-- --------------------------------------------------------

--
-- Table structure for table `edu_train`
--

CREATE TABLE `edu_train` (
  `edu_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `edu_train`
--

INSERT INTO `edu_train` (`edu_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Assistant Professor, Department of Architecture', 'The Department of Architecture, BRAC University is inviting applications for the position of Assistant Professor. Department: School of Architecture and Design', 'Dhaka , Bangladesh.', 'At least 2 years.'),
(2, 'Science Teacher (Physics/ Chemistry/ Biology)', 'Planning and implementing Science teaching strategies. Planning lessons as per the grade levels. Explaining science concepts and principles to the students in a comprehensible manner.', 'Sylhet , Bangladesh.', 'At least 3 years.'),
(3, 'Lecturer/ Asst. Professor (Accounting and Finance)', 'Conducting classes following the university guidelines. Counseling students. Conducting extra-curricular activities.', 'Chattogram , Bangladesh.', 'At least 4 years.'),
(4, 'Visa Counselling Officer', 'Handle Customer\'s Inbound And Outbound Calls. Answering Phones And Explaining The Product And Services Offered By The Company. Fix Appointments For Counselling And Generate Walk-In.', 'Khulna ,Bangladesh ', 'At least 2 years.'),
(5, 'Department Head, English (Middle Years and O Level/IGCSE)', 'To ensure the vision for the school is clearly articulated, shared, understood and acted upon effectively by members of the department.', 'Bhola, Bangladesh.', 'At least 4 years.');

-- --------------------------------------------------------

--
-- Table structure for table `eng_arch`
--

CREATE TABLE `eng_arch` (
  `edu_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eng_arch`
--

INSERT INTO `eng_arch` (`edu_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Survey Inspector / Surveyor', 'Knowledge of market analysis, sales promotion, customer management principles and practice. Target based job. Ensure sales & collection target.', 'Dhaka ,Bangladesh', 'At least 5 years.'),
(2, 'Sales and Service Engineer (EGP Expert)', 'Installation & Maintenance / Service for Laboratory Instrument Conduct Installation, Commissioning and Operational training on Laboratory instruments', 'Sylhet ,Bangladesh', 'At least 3 years.'),
(3, 'Construction Site Engineer/ Supervisor', 'Diploma in Engineering in Civil Engineering, Bachelor of Science (BSc) in Civil Engineering Skills Required: AutoCAD, Civil Construction works, Civil Engineering and Architecture', 'Bhola ,Bangladesh', 'At least 4 years.'),
(4, 'Marine Engineer ( Operation and Maintenance )', 'Bachelor of Science (BSc) in Naval Architecture and Marine Engineering Skills Required: Marine Engineering, Marine Repairing, marine tecnology', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(5, 'Project In-Charge (Civil)', 'Responsible to supervise, monitor and ensure overall construction works including finishing work as per specification. To prepare project and material planning.', 'Khulna ,Bangladesh', 'At least 4 years.');

-- --------------------------------------------------------

--
-- Table structure for table `garm_tex`
--

CREATE TABLE `garm_tex` (
  `garm_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garm_tex`
--

INSERT INTO `garm_tex` (`garm_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Welfare Officer', 'Age 25 to 32 years Only females are allowed to apply Pleasing personality, ability to deal with the workers with a positive attitude. Smart in situation handling.', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(2, 'DGM/GM - Quality (Spinning Division)', 'At least 10 year(s) The applicants should have experience in the following area(s): QUALITY ASSURANCE, Quality Control/ Audit, Quality Inspection', 'Sylhet ,Bangladesh', 'At least 4 years.'),
(3, 'Technical Designer', 'Age at least 25 years • Previous work experience in a sourcing office for Childrenswear products and possess product safety knowledge preferred.', 'Khulna ,Bangladesh', 'At least 5 years.'),
(4, 'Production Planning Analyst', 'Ability to engage vendor and build partnerships under challenging environments and tight deadlines. • Well organized, systematic, strong analytical and problem-solving skills with minimal supervision.', 'Bhola ,Bangladesh', 'At least 3 years.'),
(5, 'Country Manager Bangladesh', 'Both males and females are allowed to apply Strong communication skills and analytical aptitude Excellent organizational and time management skills', 'Cumilla ,Bangladesh', 'At least 4 years.');

-- --------------------------------------------------------

--
-- Table structure for table `it_tele`
--

CREATE TABLE `it_tele` (
  `it_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `it_tele`
--

INSERT INTO `it_tele` (`it_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Senior DevOps Engineer', 'Create and maintain internal tools to automate common tasks Customer support during the validation phase Ensure the stability and reliability of the solution', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(2, 'Web Developer', 'Both males and females are allowed to apply Skills Required: Web Design and Development The applicants should have experience described in job content.', 'Sylhet ,Bangladesh', 'At least 3 years.'),
(3, 'IT Coordinator', 'Create and maintain our social media presence. Come up with new and creative strategies for growth through digital marketing.', 'Bhola ,Bangladesh', 'At least 4 years.'),
(4, 'Ecommerce Project Manager', 'Successful planning and delivery of full life-cycle ecommerce projects within an e-commerce environment. Manage day to day site performance and issue escalation.', 'Sylhet ,Bangladesh', 'At least 5 years.'),
(5, 'IT Engeniner', 'Bachelor of Science (BSc) in Computer science from any reputed university Preferred Professional Certification: Must share Japanese language course certificate', 'Dhaka ,Bangladesh', 'At least 3 years.');

-- --------------------------------------------------------

--
-- Table structure for table `law_leg`
--

CREATE TABLE `law_leg` (
  `law_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `law_leg`
--

INSERT INTO `law_leg` (`law_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Surveyor', 'Expert in Topographic survey & Contour survey. Pre/Post Section Measurement (Levelling). Preparation of Project Layout.', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(2, 'Officer - Legal Affairs', 'The applicants should have experience in the following area(s): Labor Law, Legal Affairs, Legal Compliance/ Code of Conduct', 'Bhola ,Bangladesh', 'At least 3 years.'),
(3, 'Associate Lawyer (Documentation)', 'Ability to work independently and in a professional manner. Ability to work as a team member. Knowledge of different sectors of law.', 'Khulna ,Bangladesh', 'At least 4 years.'),
(4, 'Officer/Sr. Officer - Estate & Legal Affairs (Surveyor)', 'Bachelor degree in any discipline Training/Trade Course: Survey Course', 'Sylhet ,Bangladesh', 'At least 5 years.'),
(5, 'Executive (Land & Legal)', 'Bachelor of Law (LLB), Master of Law (LLM) Preferred Professional Certification: Enrollment as an Advocate of Bangladesh Bar Council', 'Dhaka ,Bangladesh', 'At least 3 years.');

-- --------------------------------------------------------

--
-- Table structure for table `mark_sal`
--

CREATE TABLE `mark_sal` (
  `mark_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mark_sal`
--

INSERT INTO `mark_sal` (`mark_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Manager (Sales & Marketing)/Head of Sales', 'To take responsibility to achieve targets both in Sales and branding Should have the willingness to visit different regions of the country to appoint dealers and market research.', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(2, 'Sales & Marketing Executive', 'Sales of Ongoing & Ready Apartments Expected to be Target Oriented with related to sales of Ongoing & Ready Apartments and ensure the sales target', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(3, 'Digital Marketing Executive', 'Devise and analyse innovative online promotions to help drive incremental sales and profit. Work with our in-house teams to market our services and increase brand awareness.', 'Bhola ,Bangladesh', 'At least 4 years.'),
(4, 'Executive / Sr. Executive, Sales and Marketing.', 'Graduate / Bachelor\'s degree in Marketing / Business Administration, or related field.', 'Khulna ,Bangladesh', 'At least 3 years.'),
(5, 'Assistant Manager Sales', 'Learn the products and services quickly and know-how that fits client\'s need. Vigorously seek out new sales opportunities through cold calling, networking and other sources and generate leads.', 'Khulna ,Bangladesh', 'At least 2 years.');

-- --------------------------------------------------------

--
-- Table structure for table `medi_phar`
--

CREATE TABLE `medi_phar` (
  `medi_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medi_phar`
--

INSERT INTO `medi_phar` (`medi_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Executive - Distribution (Depot In-Charge)', 'Raise requisition to central depot and received product on time Ensure on time invoicing Prepare delivery schedule, van schedule and route plan in coordination with sales team', 'Khulna ,Bangladesh', 'At least 3 years.'),
(2, 'Consultant', 'Candidates should have MBBS with FCPS/DGO/MS degree. Having degree in medical ultrasound will be considered as an additional qualification.', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(3, 'Area Manager (AM)', 'Only males are allowed to apply The candidate should be Self -Motivated, Hardworking and achieve sales targets through guiding and supervising the field forces in anywhere in Bangladesh.', 'Cumilla ,Bangladesh', 'At least 3 years.'),
(4, 'Training Manager (WASH FIT)', '4 years working experience in humanitarian field. Working experience in a similar function is must. Experience is training planning and facilitation', 'Khulna ,Bangladesh', 'At least 2 years.'),
(5, 'Chief Operating Officer (COO)', 'Advise the Board of Directors on matters relating to the operational delivery of the Hospital and clinical support services.', 'Cumilla ,Bangladesh', 'At least 3 years.');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_deve`
--

CREATE TABLE `ngo_deve` (
  `ngo_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo_deve`
--

INSERT INTO `ngo_deve` (`ngo_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Chief Administrator', 'The applicants should have experience in the following area(s): Excel Expert, NGO The applicants should have experience in the following business area(s): NGO', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(2, 'Senior MEAL Officer - SHINE Project', 'Proven knowledge and experience in Monitoring & Evaluation; related data and information management. Professional level in MS Office package, KOBO, ODK, or other related software.', 'Khulna ,Bangladesh', 'At least 2 years.'),
(3, 'Manager, Child Protection, Bhasan Char, HCMP', 'Age at least 18 years Both males and females are allowed to apply Knowledge on Child Protection, PSS, Play Pedagogy, Life Skills Based Education, Case Management etc', 'Bhola ,Bangladesh', 'At least 3 years.'),
(4, 'Training Manager (WASH FIT)', '4 years working experience in humanitarian field. Working experience in a similar function is must. Experience is training planning and facilitation Professional', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(5, 'Field Facilitator, PSS and CBCPC, Child Protection, Bhasan Char, HCMP', 'Age at least 18 years Both males and females are allowed to apply Manage stress and emotions Be flexible and open to change, adapt to cultural differences Problem solving skills', 'Bhola ,Bangladesh', 'At least 5 years.');

-- --------------------------------------------------------

--
-- Table structure for table `pro_op`
--

CREATE TABLE `pro_op` (
  `pro_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro_op`
--

INSERT INTO `pro_op` (`pro_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Chief Operating Officer (COO)', 'Only males are allowed to apply Skills Required: Analytical ability, Excellent communication skill, Leadership and interpersonal skills, Problem Solving, Public Speaking Leadership Skill', 'Dhaka ,Bangladesh', 'At least 2 years.'),
(2, 'Shick Esteve Engineer ( Rupshi Foods Limited: Bakers )', 'Operation and troubleshooting of Raw material handling system Daily Report generation of raw material consumption Daily Raw material management', 'Bhola ,Bangladesh', 'At least 4 years.'),
(3, 'Operator, Combo Cup Line ( Rupshi Foods Limited: Bakers)', 'Perform production operation as per respective SOPs Ensure quality parameters through FSSC and HACCP process Perform proper preventive and breakdown maintenance as per SOPs', 'Dhaka ,Bangladesh', 'At least 3 years.'),
(4, 'Production Assistant', 'To ensure the quantity & quality of the product. Ensure day to day monitoring of the production & ensure reporting to the line manager Assist line supervisor during production planning', 'Khulna ,Bangladesh', 'At least 5 years.'),
(5, 'Trainee Officer', 'Age 21 to 30 years Can think logically, have sharp IQ Can learn quickly Can follow instructions clearly', 'Cumilla ,Bangladesh', 'At least 2 years.');

-- --------------------------------------------------------

--
-- Table structure for table `res_con`
--

CREATE TABLE `res_con` (
  `res_id` int(10) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Experience` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_con`
--

INSERT INTO `res_con` (`res_id`, `Title`, `Description`, `Location`, `Experience`) VALUES
(1, 'Field Operation Executive', 'FI/FS recruitment, training & supervision Prepare project-wise field budget Work with different stakeholders and clients Arrange field briefing', 'Dhaka ,Bangladesh', 'At least 4 years.'),
(2, 'Assistant Branch Manager', 'Bachelor degree in any discipline, Masters degree in any discipline English and IELTS scores could be preferred.', 'Cumilla ,Bangladesh', 'At least 2 years.'),
(3, 'Educational Consultant', 'bility to handle students and guardians with proper information. Capable to maintain a good relationship with students/parents & local/intl. agents.', 'Khulna ,Bangladesh', 'At least 3 years.'),
(4, 'Senior Counselor (Canada / Australia)', 'Guide students through the application and enrolment process for education abroad Build and maintain relationships with students, their families, and institutions abroad', 'Dhaka ,Bangladesh', 'At least 5 years.'),
(5, 'Project Proposal Writer', 'Excellent writing, editing, and research skills. Strong communication skills and the ability to work collaboratively with multiple stakeholders.', 'Bhola ,Bangladesh', 'At least 2 years.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_fin`
--
ALTER TABLE `acc_fin`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `agro`
--
ALTER TABLE `agro`
  ADD PRIMARY KEY (`agro_id`);

--
-- Indexes for table `alljobs`
--
ALTER TABLE `alljobs`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `commer`
--
ALTER TABLE `commer`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `data_oper`
--
ALTER TABLE `data_oper`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `des_creat`
--
ALTER TABLE `des_creat`
  ADD PRIMARY KEY (`des_id`);

--
-- Indexes for table `edu_train`
--
ALTER TABLE `edu_train`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `eng_arch`
--
ALTER TABLE `eng_arch`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indexes for table `garm_tex`
--
ALTER TABLE `garm_tex`
  ADD PRIMARY KEY (`garm_id`);

--
-- Indexes for table `it_tele`
--
ALTER TABLE `it_tele`
  ADD PRIMARY KEY (`it_id`);

--
-- Indexes for table `law_leg`
--
ALTER TABLE `law_leg`
  ADD PRIMARY KEY (`law_id`);

--
-- Indexes for table `mark_sal`
--
ALTER TABLE `mark_sal`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `medi_phar`
--
ALTER TABLE `medi_phar`
  ADD PRIMARY KEY (`medi_id`);

--
-- Indexes for table `ngo_deve`
--
ALTER TABLE `ngo_deve`
  ADD PRIMARY KEY (`ngo_id`);

--
-- Indexes for table `pro_op`
--
ALTER TABLE `pro_op`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `res_con`
--
ALTER TABLE `res_con`
  ADD PRIMARY KEY (`res_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_fin`
--
ALTER TABLE `acc_fin`
  MODIFY `acc_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `agro`
--
ALTER TABLE `agro`
  MODIFY `agro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alljobs`
--
ALTER TABLE `alljobs`
  MODIFY `main_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `commer`
--
ALTER TABLE `commer`
  MODIFY `com_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_oper`
--
ALTER TABLE `data_oper`
  MODIFY `data_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `des_creat`
--
ALTER TABLE `des_creat`
  MODIFY `des_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `edu_train`
--
ALTER TABLE `edu_train`
  MODIFY `edu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eng_arch`
--
ALTER TABLE `eng_arch`
  MODIFY `edu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `garm_tex`
--
ALTER TABLE `garm_tex`
  MODIFY `garm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `it_tele`
--
ALTER TABLE `it_tele`
  MODIFY `it_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `law_leg`
--
ALTER TABLE `law_leg`
  MODIFY `law_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mark_sal`
--
ALTER TABLE `mark_sal`
  MODIFY `mark_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medi_phar`
--
ALTER TABLE `medi_phar`
  MODIFY `medi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ngo_deve`
--
ALTER TABLE `ngo_deve`
  MODIFY `ngo_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pro_op`
--
ALTER TABLE `pro_op`
  MODIFY `pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `res_con`
--
ALTER TABLE `res_con`
  MODIFY `res_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
