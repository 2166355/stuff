-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2019 at 09:15 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtekf`
--

-- --------------------------------------------------------

--
-- Table structure for table `quizcss`
--

DROP TABLE IF EXISTS `quizcss`;
CREATE TABLE IF NOT EXISTS `quizcss` (
  `qID` int(10) NOT NULL,
  `qType` enum('ToF','FItB') NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`qID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizcss`
--

INSERT INTO `quizcss` (`qID`, `qType`, `question`, `answer`) VALUES
(1, 'FItB', 'The color of the caret in __________ elements, inputs or text areas are referred to in caret-color property', 'editable'),
(2, 'FItB', 'The style of the four borders is set in ________ properties', 'border-style'),
(3, 'FItB', 'The distance between ________ borders are set in border spacing', 'Adjacent cells'),
(4, 'FItB', 'An animation\'s speed curve is specified in ____________ property', 'Animation-timing-function'),
(5, 'FItB', 'The manner to which auto-placed items are __________ in the grid is called grid-auto-flow', 'inserted'),
(6, 'FItB', 'Whether or not ________ and backgrounds are to be displayed on empty cells in a table', 'borders'),
(7, 'FItB', 'The manner of displaying a certain HTML element is called _____', 'display'),
(8, 'FItB', 'Filter defines the ________ on an element before it is displayed', 'effect'),
(9, 'FItB', 'A ________ for the grid item is specified in Grid area', 'name'),
(10, 'FItB', 'To improve the layout of paragraphs, ___________ are used to split words', 'hyphens'),
(11, 'FItB', 'Text align specifies the _______ alignment of text', 'horizontal'),
(12, 'FItB', 'Text indent specifies the indentation of the __________ line in a text block', 'first'),
(13, 'FItB', 'Word ________ allows long, unbreakable words to be broken and wrapped to the next line', 'Wrap'),
(14, 'FItB', 'Using _______ it can declare the style by matching with the tags and attributes', 'Selectors'),
(15, 'FItB', 'It can annotates multiple elements in a document called __________ identifier', 'Class'),
(16, 'FItB', 'Classes and IDs are ____________', 'case-sensetive'),
(17, 'FItB', 'CSS selector called ________ are using :hover to change the color when pointer hovers over it', 'pseudo-class'),
(18, 'FItB', '__________ refers to the relative weights of various rules', 'Specificity'),
(19, 'FItB', 'It relies on the ancestor-descendant relationship to operate and this is the key feature CSS offer called ___________', 'Inheritance'),
(20, 'FItB', 'The space between selectors and properties called __________', 'Whitespace'),
(21, 'ToF', '\"@charset is an example of At-Rules.\"', 'TRUE'),
(22, 'ToF', 'CSS Rule Sets consists of a selector, followed by a brace-enclosed declaration block, which contains zero or more semi-colon ( ; ) separated property declarations, which in turn consists of a property name, followed by a colon ( : ), followed by a property value.', 'TRUE'),
(23, 'ToF', 'Selector syntax is a chain of one or more sequences of simple selectors separated by combinators, with two pseudo-element possibly appended to the last sequence', 'FALSE'),
(24, 'ToF', 'CSS is the acronym of Cascading Style Sheet.', 'TRUE'),
(25, 'ToF', 'CSS is the language used to specify the presentation of structurally marked up documents.', 'TRUE'),
(26, 'ToF', 'Cascading Style Sheet was developed by Tim Berners Lee.', 'FALSE'),
(27, 'ToF', 'he matched elements of the selector are called the subjects of the selector.', 'TRUE'),
(28, 'ToF', 'Combinators are used to impose additional matching constraints, applied by prepending another sequence of selectors and the combinator to a sequence, with the subjects of the entire selector being some subset of the elements matched by the last sequence.', 'TRUE'),
(29, 'ToF', 'Universal Selector are not simple selectors.', 'FALSE'),
(30, 'ToF', '*\" is a universal selector.\"', 'TRUE'),
(31, 'ToF', 'When the styles involve the same property, they conflict, and must be resolved such that only one style is applied.', 'TRUE'),
(32, 'ToF', 'Elements is one of the HTML Document Components.', 'TRUE'),
(33, 'ToF', 'CSS Frameworks provides predefined CSS design functionality that can be reused, extended or customized.', 'TRUE'),
(34, 'ToF', 'Polyfills provides features that developers expect browsers to provide natively.', 'TRUE'),
(35, 'ToF', 'Percentage is a number with a \'#\' suffix.', 'FALSE'),
(36, 'ToF', 'Strings are delimited only by single quotes.', 'FALSE'),
(37, 'ToF', 'Frequency units are initially introduced in CSS2 for the (obsoleted) aural media type reintroduced in CSS3, but is currently unused.', 'TRUE'),
(38, 'ToF', 'Duration (or time) units are used in animation,  transition, and related properties.', 'TRUE'),
(39, 'ToF', '> is a symbol of child combinator.\"', 'TRUE'),
(40, 'ToF', 'CSS Preprocessors generates CSS using a custom language syntax that typically includes features that exist in pure CSS.', 'FALSE');

-- --------------------------------------------------------

--
-- Table structure for table `quizhtml`
--

DROP TABLE IF EXISTS `quizhtml`;
CREATE TABLE IF NOT EXISTS `quizhtml` (
  `qID` int(10) NOT NULL,
  `qType` enum('ToF','FItB') NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`qID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizhtml`
--

INSERT INTO `quizhtml` (`qID`, `qType`, `question`, `answer`) VALUES
(1, 'FItB', 'The HTML stands for _________', 'Hypertext Markup Language'),
(2, 'FItB', 'SGML means Standard _________', 'Standard Generalized Markup Language'),
(3, 'FItB', 'The W3C stands for ______________________', 'World Wide Web Consortium'),
(4, 'FItB', 'In september of 1995 they launched the  ____________', 'HTML 2.0'),
(5, 'FItB', 'The primary author of HTML is ___________', 'Tim Berners-Lee'),
(6, 'FItB', '_______________  is the day when HTML 5 was completed and standardized', 'October 28 2014'),
(7, 'FItB', 'WHATWG means Web Hypertext ___________ Technology Working Group', 'Application'),
(8, 'FItB', '_________ contain information that you do not want to appear in the actual content', 'Attributes'),
(9, 'FItB', '__________ comprises of content open and close tag', 'element'),
(10, 'FItB', 'Some elements do not have a content like the img element and they are called ________', 'Empty element'),
(11, 'FItB', 'This ________ attribute contains the path where the image file is located', 'src'),
(12, 'FItB', 'This ________ attribute is used to define equal styles for elements with the same class name', 'Class'),
(13, 'FItB', 'The most important form element is the  ____________', 'input'),
(14, 'FItB', 'The ________ element is used to have a drop-down-list', 'select'),
(15, 'FItB', 'The DOCTYPE declaration for HTML - 5 is _____________', '!DOCTYPE html'),
(16, 'FItB', 'The character encoding for HTML - 5 is ___________', 'meta charset=\"UTF-8\"'),
(17, 'FItB', 'The new _________ elements in HTML5 svg and canvas', 'graphic'),
(18, 'FItB', 'The new _________ elements in HTML5 header, footer, section and ;article', 'semantic'),
(19, 'FItB', 'XHTML means __________ Hypertext Markup Language', 'Extensible'),
(20, 'FItB', 'Web address or _________ and can be composed of either words or IP address', 'URL'),
(21, 'ToF', 'Hypertext Markup Language is the language used to mark up documents in the World Wibe Web', 'TRUE'),
(22, 'ToF', 'HTML was used not to specify the structure and content of web pages as well as their presentaton.', 'FALSE'),
(23, 'ToF', 'HTML was developed at CERN.', 'TRUE'),
(24, 'ToF', 'Modern web development practice, however, uses HTML solely for semantic specification of web page structure and content, with presentational aspects being delegated to style sheets.', 'TRUE'),
(25, 'ToF', 'HTML 5 arose from the effort to evolve HTML to address backward compatibility issues that hindered the adoption of XHTML, as well as to address the emerging needs of modern web applications.', 'TRUE'),
(26, 'ToF', 'DOCTYPE is a version information.', 'TRUE'),
(27, 'ToF', 'HTML was used to specify the structure and content of web pages, as well as their presentation.', 'TRUE'),
(28, 'ToF', 'HTML 4.0 was introduced deprecation of presentational elements and attributes in favor of style sheets.', 'TRUE'),
(29, 'ToF', 'XHTML is the reformulation of HTTP in XML.', 'FALSE'),
(30, 'ToF', 'DOCTYPE means Document Transfer Declaration.', 'FALSE'),
(31, 'ToF', 'HTML 2.0 was a major version of HTML published in late 1999 and was widely used before the release of the HTML- 5 version.', 'FALSE'),
(32, 'ToF', 'HTML tag is described as starting tag and when the element contains another item, it ends with an end tag \"</element>\".', 'TRUE'),
(33, 'ToF', 'It is allowed to have an HTML element within another HTML element.', 'TRUE'),
(34, 'ToF', 'Using class attributes, you can uniquely identify the element in order to distinguish the different elements using a same name.', 'FALSE'),
(35, 'ToF', 'Bold, italicize or underline are the only options you can use to specify how a text will appear.', 'FALSE'),
(36, 'ToF', 'META elements can be used to insert name, content and scheme that describe the property of the HTML document.', 'TRUE'),
(37, 'ToF', 'Comments, including this into your code, help others to understand your code.', 'TRUE'),
(38, 'ToF', 'The image does not have a default border.', 'FALSE'),
(39, 'ToF', 'The attribute cellpadding describes the space between table cells, while the cellspacing defines the contents inside the cell.', 'FALSE'),
(40, 'ToF', 'In order to collect data from the site, for example in registration you want to know the information needed, you can use HTML Forms.', 'TRUE');

-- --------------------------------------------------------

--
-- Table structure for table `quizhttp`
--

DROP TABLE IF EXISTS `quizhttp`;
CREATE TABLE IF NOT EXISTS `quizhttp` (
  `qID` int(10) NOT NULL,
  `qType` enum('ToF','FItB') NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` varchar(100) NOT NULL,
  PRIMARY KEY (`qID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quizhttp`
--

INSERT INTO `quizhttp` (`qID`, `qType`, `question`, `answer`) VALUES
(1, 'FItB', 'HTTP means Hypertext Transper __________', 'protocol'),
(2, 'FItB', 'HTTp is a _____________ communication protocol', 'Stateless'),
(3, 'FItB', 'TRACE method is a requests a remote, application-level ____________ of the request message', 'loop-back'),
(4, 'FItB', 'Error ______ means Bad Gateway', '500'),
(5, 'FItB', '_________ can be extended by defining new request methods, message headers and/or status codes, and then implementing servers and/or clients that make use of new functionality', 'HTTP'),
(6, 'FItB', '_____________ is one of the method properties that indicates that the response to a method is allowed to be stores for future reuse', 'Cacheable Methods'),
(7, 'FItB', '______________ means that the client does not request, and does not expect any state change on the origin server as a result of applying the method to a target resource', 'Safe Methods'),
(8, 'FItB', 'GET METHOD transfer a current selected representation of the ______ resource', 'target'),
(9, 'FItB', 'Cacheable methods are GET, HEAD and ______', 'POST'),
(10, 'FItB', '__________ is commonly used to create and end-to-end cirtual correction, through one or more proxies which can then be secured using TLS', 'CONNECT'),
(11, 'FItB', 'Error 404 means _________', 'Not Found'),
(12, 'FItB', 'Path to resource may refer to a static or _______ resource', 'dynamic'),
(13, 'FItB', 'HTTP is based on a __________ architecture', 'Client-Server'),
(14, 'FItB', '_____ method are used in accepting HTML form data', 'Post'),
(15, 'FItB', 'Put method create or replace the state of the target resource with the state defined by the representation enclosed in the request message ________', 'payload'),
(16, 'FItB', '________ methods typically used for testing diagnostics of the request/ Response chain', 'TRACE  '),
(17, 'FItB', '________ METHOD remove the association between the target resource and its currentfunctionality', 'DELETE'),
(18, 'FItB', 'W3C and _________ developed HTTP', 'IETF'),
(19, 'FItB', 'HTTP use PORT __ by default', '80'),
(20, 'FItB', 'HTTP was invented by Tim Berners-Lee at ______ in 1989', 'CERN'),
(21, 'ToF', 'TRACE methods typically used for testing diagnostics of the request/ Response chain ', 'TRUE'),
(22, 'ToF', 'CONNECT method is an expamle of Standard Methods. ', 'TRUE'),
(23, 'ToF', 'WARNING, CONNECTION and DATE are under Request Header Fields. (False)', 'FALSE'),
(24, 'ToF', 'Information, Success, Redirection, Client Error and Server Error are HTTP Status Codes (True)', 'TRUE'),
(25, 'ToF', 'DAV and DEPTH are message headers. (True)', 'TRUE'),
(26, 'ToF', 'Error 404 means \"Not Found\". (True)', 'TRUE'),
(27, 'ToF', 'Post method are used in accepting HTML form data. ', 'FALSE'),
(28, 'ToF', 'Head methos must also be supported by all general-purpose server ', 'TRUE'),
(29, 'ToF', 'HTTP is not a stateless communication protocol.', 'FALSE'),
(30, 'ToF', 'HTTP is based on a client server architecture.', 'TRUE'),
(31, 'ToF', 'Hypertext Transfer Protocol is the application layer communication protocol used to access resources on World Wide Web.', 'TRUE'),
(32, 'ToF', 'W3C and IETF developed HTTP.', 'TRUE'),
(33, 'ToF', 'HTTP typically runs on top of TCP/IP .', 'TRUE'),
(34, 'ToF', 'TCP port 444 for HHTPS(HTTP over SSL/TLS).', 'FALSE'),
(35, 'ToF', 'Path to resource may refer to a static or dynamic resource.', 'TRUE'),
(36, 'ToF', 'Query typically provided as key=value pairs, with ampersand(&) separators between key/value pairs.', 'TRUE'),
(37, 'ToF', 'GET METHOD transfer a current selected representation of the target resource.', 'TRUE'),
(38, 'ToF', 'DELETE METHOD doesnt remove the association between the target resource and its currentfunctionality. ', 'FALSE'),
(39, 'ToF', 'Indempotent Methods are GET, HEAD, OPTION, TRACE, PUT, DELETE. ', 'TRUE'),
(40, 'ToF', 'Cacheable methods indicates that the response to a methos is not allowed to be stored for future reuse.', 'FALSE');

-- --------------------------------------------------------

--
-- Table structure for table `quiztest`
--

DROP TABLE IF EXISTS `quiztest`;
CREATE TABLE IF NOT EXISTS `quiztest` (
  `question` varchar(100) NOT NULL,
  `answers` varchar(500) NOT NULL,
  `correct answer` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiztest`
--

INSERT INTO `quiztest` (`question`, `answers`, `correct answer`) VALUES
('ads', '[[{question:\"ads\",answers:{\"a\": \"Superman\", \"b\": \"The Terminator\", \"c\": \"Waluigi, obviously\"},correctAnswer:\"a\"}]]', 'a');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
