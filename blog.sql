-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2020 at 09:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `no` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`no`, `name`, `email`, `phone_no`, `msg`, `date`) VALUES
(1, 'Yogesh Nile', 'yogeshnile.work4u@gmail.com', '9876543210', 'hello from yogesh', '2020-05-29 13:17:25'),
(2, 'Nile Yogesh', 'yogeshnile.work4u@yahoo.com', '7412589635', 'hello from yogesh', '2020-05-29 13:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `no` int(11) NOT NULL,
  `title` text NOT NULL,
  `tag_line` varchar(50) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`no`, `title`, `tag_line`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Ubuntu', 'Ubuntu is a free', 'Ubuntu', 'Ubuntu is built on Debian\'s architecture and infrastructure, and comprises Linux server, desktop and discontinued phone and tablet operating system versions.[26] Ubuntu releases updated versions predictably every six months,[27] and each release receives free support for nine months (eighteen months prior to 13.04)[28] with security fixes, high-impact bug fixes and conservative, substantially beneficial low-risk bug fixes.[29] The first release was in October 2004.\r\n\r\nCurrent long-term support (LTS) releases are supported for five years, and are released every two years. Since the release of Ubuntu 6.06, every fourth release receives long-term support (LTS).[27] Long-term support includes updates for new hardware, security patches and updates to the \'Ubuntu stack\' (cloud computing infrastructure).[30] The first LTS releases were supported for three years on the desktop and five years on the server; since Ubuntu 12.04 LTS, desktop support for LTS releases was increased to five years as well.[31][32][33] LTS releases get regular point releases with support for new hardware and integration of all the updates published in that series to date.[34]\r\n\r\nUbuntu packages are based on packages from Debian\'s unstable branch, which are synchronised every six months. Both distributions use Debian\'s deb package format and package management tools (e.g. APT and Ubuntu Software). Debian and Ubuntu packages are not necessarily binary compatible with each other, however, so packages may need to be rebuilt from source to be used in Ubuntu.[35] Many Ubuntu developers are also maintainers of key packages within Debian. Ubuntu cooperates with Debian by pushing changes back to Debian,[36] although there has been criticism that this does not happen often enough. Ian Murdock, the founder of Debian, had expressed concern about Ubuntu packages potentially diverging too far from Debian to remain compatible.[37] Before release, packages are imported from Debian unstable continuously and merged with Ubuntu-specific modifications. One month before release, imports are frozen, and packagers then work to ensure that the frozen features interoperate well together. ', 'ubuntu.jpg', '2020-05-27 12:49:04'),
(2, 'Kali linux', 'Free os for haking', 'kali-linux', 'Kali Linux has a dedicated project set aside for compatibility and porting to specific Android devices, called Kali NetHunter.[21]\r\n\r\nIt is the first Open Source Android penetration testing platform for Nexus devices, created as a joint effort between the Kali community member \"BinkyBear\" and Offensive Security. It supports Wireless 802.11 frame injection, one-click MANA Evil Access Point setups, HID keyboard (Teensy like attacks), as well as Bad USB MITM attacks.[21]\r\n\r\nBackTrack (Kali\'s predecessor) contained a mode known as forensic mode, which was carried over to Kali via live boot. This mode is very popular for many reasons, partly because many Kali users already have a bootable Kali USB drive or CD, and this option makes it easy to apply Kali to a forensic job. When booted in forensic mode, the system doesn\'t touch the internal hard drive or swap space and auto mounting is disabled. However, the developers recommend that users test these features extensively before using Kali for real world forensics.[22] ', 'kali.jpg', '2020-05-29 08:29:45'),
(3, 'Python (programming language)', 'Python is an interpreted programming language', 'python', 'Python is a multi-paradigm programming language. Object-oriented programming and structured programming are fully supported, and many of its features support functional programming and aspect-oriented programming (including by metaprogramming[49] and metaobjects (magic methods)).[50] Many other paradigms are supported via extensions, including design by contract[51][52] and logic programming.[53]\r\n\r\nPython uses dynamic typing and a combination of reference counting and a cycle-detecting garbage collector for memory management. It also features dynamic name resolution (late binding), which binds method and variable names during program execution.\r\n\r\nPython\'s design offers some support for functional programming in the Lisp tradition. It has filter, map, and reduce functions; list comprehensions, dictionaries, sets, and generator expressions.[54] The standard library has two modules (itertools and functools) that implement functional tools borrowed from Haskell and Standard ML.[55]\r\n\r\nThe language\'s core philosophy is summarized in the document The Zen of Python (PEP 20), which includes aphorisms such as:[56]\r\n\r\n    Beautiful is better than ugly.\r\n    Explicit is better than implicit.\r\n    Simple is better than complex.\r\n    Complex is better than complicated.\r\n    Readability counts.\r\n\r\nRather than having all of its functionality built into its core, Python was designed to be highly extensible. This compact modularity has made it particularly popular as a means of adding programmable interfaces to existing applications. Van Rossum\'s vision of a small core language with a large standard library and easily extensible interpreter stemmed from his frustrations with ABC, which espoused the opposite approach.[35]\r\n\r\nPython strives for a simpler, less-cluttered syntax and grammar while giving developers a choice in their coding methodology. In contrast to Perl\'s \"there is more than one way to do it\" motto, Python embraces a \"there should be one—and preferably only one—obvious way to do it\" design philosophy.[56] Alex Martelli, a Fellow at the Python Software Foundation and Python book author, writes that \"To describe something as \'clever\' is not considered a compliment in the Python culture.\"[57] ', 'python.jpg', '2020-05-29 10:44:50'),
(4, 'Microsoft Windows', 'Microsoft Windows, commonly referred to as Windows', 'Microsoft-Windows', 'Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. Each family caters to a certain sector of the computing industry. Active Microsoft Windows families include Windows NT and Windows IoT; these may encompass subfamilies, e.g. Windows Server or Windows Embedded Compact (Windows CE). Defunct Microsoft Windows families include Windows 9x, Windows Mobile and Windows Phone.\r\n\r\nMicrosoft introduced an operating environment named Windows on November 20, 1985, as a graphical operating system shell for MS-DOS in response to the growing interest in graphical user interfaces (GUIs).[3] Microsoft Windows came to dominate the world\'s personal computer (PC) market with over 90% market share, overtaking Mac OS, which had been introduced in 1984. Apple came to see Windows as an unfair encroachment on their innovation in GUI development as implemented on products such as the Lisa and Macintosh (eventually settled in court in Microsoft\'s favor in 1993). On PCs, Windows is still the most popular operating system. However, in 2014, Microsoft admitted losing the majority of the overall operating system market to Android,[4] because of the massive growth in sales of Android smartphones. In 2014, the number of Windows devices sold was less than 25% that of Android devices sold. This comparison, however, may not be fully relevant, as the two operating systems traditionally target different platforms. Still, numbers for server use of Windows (that are comparable to competitors) show one third market share, similar to that for end user use.\r\n\r\nAs of February 2020, the most recent version of Windows for PCs, tablets and embedded devices is Windows 10. The most recent version for server computers is Windows Server, version 1909.[5] A specialized version of Windows also runs on the Xbox One video game console.[6] ', 'windows.jpg', '2020-05-27 14:40:18'),
(5, 'PHP', 'PHP is a popular scripting language', 'php', 'PHP is a popular general-purpose scripting language that is especially suited to web development.[5] It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994;[6] the PHP reference implementation is now produced by The PHP Group.[7] PHP originally stood for Personal Home Page,[6] but it now stands for the recursive initialism PHP: Hypertext Preprocessor.[8]\r\n\r\nPHP code is usually processed on a web server by a PHP interpreter implemented as a module, a daemon or as a Common Gateway Interface (CGI) executable. On a web server, the result of the interpreted and executed PHP code – which may be any type of data, such as generated HTML or binary image data – would form the whole or part of a HTTP response. Various web template systems, web content management systems, and web frameworks exist which can be employed to orchestrate or facilitate the generation of that response. Additionally, PHP can be used for many programming tasks outside of the web context, such as standalone graphical applications[9] and robotic drone control.[10] Arbitrary PHP code can also be interpreted and executed via command-line interface (CLI).\r\n\r\nThe standard PHP interpreter, powered by the Zend Engine, is free software released under the PHP License. PHP has been widely ported and can be deployed on most web servers on almost every operating system and platform, free of charge.[11]\r\n\r\nThe PHP language evolved without a written formal specification or standard until 2014, with the original implementation acting as the de facto standard which other implementations aimed to follow. Since 2014, work has gone on to create a formal PHP specification.[12] ', 'php.jpg', '2020-05-27 14:51:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
