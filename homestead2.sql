-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-09 07:04:28
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead2`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'system', '系统管理', NULL, NULL),
(2, 'post', '文章管理', NULL, NULL),
(3, 'topic', '专题管理', NULL, NULL),
(4, 'notice', '通知管理', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_permission_role`
--

CREATE TABLE `admin_permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permission_role`
--

INSERT INTO `admin_permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(15, 4, 5, NULL, NULL),
(5, 3, 2, NULL, NULL),
(14, 3, 4, NULL, NULL),
(7, 5, 4, NULL, NULL),
(8, 2, 1, NULL, NULL),
(12, 4, 1, NULL, NULL),
(11, 3, 1, NULL, NULL),
(13, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sys-manager', '系统管理员', NULL, NULL),
(3, 'post-manager', '文章管理员', NULL, NULL),
(4, 'topic-manager', '专题管理员', NULL, NULL),
(5, 'notice-manager', '通知管理员', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_user`
--

CREATE TABLE `admin_role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_user`
--

INSERT INTO `admin_role_user` (`id`, `role_id`, `user_id`) VALUES
(6, 1, 2),
(10, 4, 3),
(9, 3, 3);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'lfh', '$2y$10$55VwaUzfQXEjj/cL4aq77eXdmani6ZM03qKLGco8R6ekPM6H4QrXW', NULL, '2019-06-09 02:28:22', '2019-06-09 02:28:22'),
(2, 'admin', '$2y$10$XHtA67BXXpBG3hgQFZd2IuYmKpcRAxRbTEgjj0k481xNbwnx77MKG', 'x0vgp0Dj2a4vuOL0AL68bgBh9AezlAA6ODkqaKCTdbEmIUXUJ7TbCaDtM3m8', '2019-06-09 01:19:30', '2019-06-09 01:19:30');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `fans`
--

CREATE TABLE `fans` (
  `id` int(10) UNSIGNED NOT NULL,
  `fan_id` int(11) NOT NULL,
  `star_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `fans`
--

INSERT INTO `fans` (`id`, `fan_id`, `star_id`, `created_at`, `updated_at`) VALUES
(3, 45, 44, '2019-06-07 12:57:44', '2019-06-07 12:57:44');

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{"displayName":"App\\\\Jobs\\\\SendMessage","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"data":{"commandName":"App\\\\Jobs\\\\SendMessage","command":"O:20:\\"App\\\\Jobs\\\\SendMessage\\":5:{s:28:\\"\\u0000App\\\\Jobs\\\\SendMessage\\u0000notice\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":2:{s:5:\\"class\\";s:10:\\"App\\\\Notice\\";s:2:\\"id\\";i:1;}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;}"}}', 0, NULL, 1560048148, 1560048148),
(2, 'default', '{"displayName":"App\\\\Jobs\\\\SendMessage","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"data":{"commandName":"App\\\\Jobs\\\\SendMessage","command":"O:20:\\"App\\\\Jobs\\\\SendMessage\\":5:{s:28:\\"\\u0000App\\\\Jobs\\\\SendMessage\\u0000notice\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":2:{s:5:\\"class\\";s:10:\\"App\\\\Notice\\";s:2:\\"id\\";i:2;}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;}"}}', 0, NULL, 1560048966, 1560048966),
(3, 'default', '{"displayName":"App\\\\Jobs\\\\SendMessage","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"data":{"commandName":"App\\\\Jobs\\\\SendMessage","command":"O:20:\\"App\\\\Jobs\\\\SendMessage\\":5:{s:28:\\"\\u0000App\\\\Jobs\\\\SendMessage\\u0000notice\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":2:{s:5:\\"class\\";s:10:\\"App\\\\Notice\\";s:2:\\"id\\";i:3;}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;}"}}', 0, NULL, 1560049372, 1560049372),
(4, 'default', '{"displayName":"App\\\\Jobs\\\\SendMessage","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"data":{"commandName":"App\\\\Jobs\\\\SendMessage","command":"O:20:\\"App\\\\Jobs\\\\SendMessage\\":5:{s:28:\\"\\u0000App\\\\Jobs\\\\SendMessage\\u0000notice\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":2:{s:5:\\"class\\";s:10:\\"App\\\\Notice\\";s:2:\\"id\\";i:4;}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;}"}}', 0, NULL, 1560049992, 1560049992),
(5, 'default', '{"displayName":"App\\\\Jobs\\\\SendMessage","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"data":{"commandName":"App\\\\Jobs\\\\SendMessage","command":"O:20:\\"App\\\\Jobs\\\\SendMessage\\":5:{s:28:\\"\\u0000App\\\\Jobs\\\\SendMessage\\u0000notice\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":2:{s:5:\\"class\\";s:10:\\"App\\\\Notice\\";s:2:\\"id\\";i:5;}s:6:\\"\\u0000*\\u0000job\\";N;s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:5:\\"delay\\";N;}"}}', 0, NULL, 1560050853, 1560050853);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_26_233534_create_posts_table', 1),
(4, '2017_04_04_091147_create_comment_table', 1),
(5, '2017_04_04_112227_create_zan_table', 1),
(6, '2017_04_05_223606_create_fan_table', 1),
(7, '2017_04_06_162830_create_topics_table', 1),
(8, '2017_04_08_110156_create_admin_user_table', 1),
(9, '2017_04_08_215943_alter_posts_table', 1),
(10, '2017_04_09_100358_create_permission_and_roles', 1),
(11, '2017_04_11_143417_create_notice_table', 1),
(12, '2017_04_11_234527_create_jobs_table', 1),
(13, '2017_04_11_234539_create_failed_jobs_table', 1),
(14, '2017_05_14_205043_alter_user_table_add_avatar', 1);

-- --------------------------------------------------------

--
-- 表的结构 `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '端午节放假通知！', '6月7日到6月9日放假！', '2019-06-09 02:42:27', '2019-06-09 02:42:27'),
(2, '加班公告！', '公司全体今天加班一个小时！', '2019-06-09 02:56:06', '2019-06-09 02:56:06'),
(3, '重要通知！', '林志玲结婚啦！', '2019-06-09 03:02:52', '2019-06-09 03:02:52'),
(4, '11111111111', '1111111111111', '2019-06-09 03:13:12', '2019-06-09 03:13:12'),
(5, '22222222222', '2222222222222', '2019-06-09 03:27:33', '2019-06-09 03:27:33');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, '阿里毕玄：程序员如何提升自己的硬实力', '<h4>从业余程序员到职业程序员</h4><p>程序员刚入行时，我觉得最重要的是把自己培养成职业的程序员。</p><p>我的程序员起步比同龄人都晚了很多，更不用说现在的年轻人了。我大学读的是生物专业，在上大学前基本算是完全没接触过计算机。军训的时候因为很无聊，我和室友每天跑去学校的机房玩，我现在还印象很深刻，我第一次走进机房的时候，别人问，你是要玩windows，还是dos，我那是完全的一抹黑。后来就只记得在机房一堆人都是在练习盲打，军训完，盲打倒是练的差不多了，对计算机就这么产生了浓厚的兴趣，大一的时候都是玩组装机，捣鼓了一些，对计算机的硬件有了那么一些了解。</p><p>到大二后，买了一些书开始学习当时最火的网页三剑客，学会了手写HTML、PS的基本玩法之类的，课余、暑假也能开始给人做做网站什么的(那个时候做网站真的好赚钱)，可能那样过了个一年左右，做静态的网页就不好赚钱了，也不好找实习工作，于是就开始学asp，写些简单的CRUD，做做留言板、论坛这些动态程序，应该算是在这个阶段接触编程了。</p><p>毕业后加入了深圳的一家做政府行业软件的公司，一个非常靠谱和给我空间的Leader，使得自己在那几年有了不错的成长，终于成了一个职业的程序员。</p><p>通常来说，业余或半职业的程序员，多数是1个人，或者很小的一个团队一起开发，使得在开发流程、协作工具（例如jira、cvs/svn/git等）、测试上通常会有很大的欠缺，而职业的程序员在这方面则会专业很多。另外，通常职业的程序员做的系统都要运行较长的时间，所以在可维护性上会特别注意，这点我是在加入阿里后理解更深的。一个运行10年的系统，和一个写来玩玩的系统显然是有非常大差别的。</p><p>这块自己感觉也很难讲清楚，只能说模模糊糊有个这样的概念。通常在有兴趣的基础上，从业余程序员跨越到成为职业程序员我觉得不会太难。</p><h4>编程能力的成长</h4><p>作为程序员，最重要的能力始终是编程能力，就我自己的感受而言，我觉得编程能力的成长主要有这么几个部分：</p><p>1、编程能力初级：会用</p><p>编程，首先都是从学习编程语言的基本知识学起的，不论是什么编程语言，有很多共同的基本知识，例如怎么写第一个Hello World、if/while/for、变量等，因此我比较建议在刚刚开始学一门编程语言的时候，看看编程语言自己的一些文档就好，不要上来就去看一些高阶的书。我当年学Java的时候上来就看Think in Java、Effective Java之类的，真心好难懂。</p><p>除了看文档以外，编程是个超级实践的活，所以一定要多写代码，只有这样才能真正熟练起来。这也是为什么我还是觉得在面试的时候让面试者手写代码是很重要的，这个过程是非常容易判断写代码的熟悉程度的。很多人会说由于写代码都是高度依赖IDE的，导致手写很难，但我绝对相信写代码写了很多的人，手写一段不太复杂的、可运行的代码是不难的。即使像我这种三年多没写过代码的人，让我现在手写一段不太复杂的可运行的Java程序，还是没问题的，前面N年的写代码生涯使得很多东西已经深入骨髓了。</p><p>我觉得编程能力初级这个阶段对于大部分程序员来说都不会是问题，勤学苦练，是这个阶段的核心。</p><p>2、编程能力中级：会查和避免问题</p><p>除了初级要掌握的会熟练的使用编程语言去解决问题外，中级我觉得首先是提升查问题的能力。</p><p>在写代码的过程中，出问题是非常正常的，怎么去有效且高效的排查问题，是程序员群体中通常能感受到的大家在编程能力上最大的差距。</p><p>解决问题能力强的基本很容易在程序员群体里得到很高的认可。在查问题的能力上，首先要掌握的是一些基本的调试技巧，好用的调试工具，在Java里有JDK自带的jstat、jmap、jinfo，不在JDK里的有mat、gperf、btrace等。工欲善其事必先利其器，在查问题上是非常典型的，有些时候大家在查问题时的能力差距，有可能仅仅是因为别人比你多知道一个工具而已。</p><p>除了调试技巧和工具外，查问题的更高境界就是懂原理。一个懂原理的程序员在查问题的水平上和其他程序员是有明显差距的。我想很多的同学应该能感受到，有些时候查出问题的原因仅仅是因为有效的工具，知其然不知其所以然。</p><p>我给很多阿里的同学培训过Java排查问题的方法，在这个培训里，我经常也会讲到查问题的能力的培养最主要的也是熟练，多尝试给自己写一些会出问题的程序，多积极的看别人是怎么查问题的，多积极的去参与排查问题，很多最后查问题能力强的人多数仅仅是因为“无他，但手熟尔”。</p><p>我自己排查问题能力的提升主要是在2009年和2010年。那两年作为淘宝消防队（处理各种问题和故障的虚拟团队）的成员，处理了很多的故障和问题。当时消防队还有阿里最公认的技术大神——多隆，我向他学习到了很多排查问题的技巧。和他比，我排查问题的能力就是初级的那种。</p><p>印象最深刻的是一次我们一起查一个应用cpu us高的问题，我们两定位到是一段代码在某种输入参数的时候会造成cpu us高的原因后，我能想到的继续查的方法是去生产环境抓输入参数，然后再用参数来本地debug看是什么原因。但多隆在看了一会那段代码后，给了我一个输入参数，我拿这个参数一运行，果然cpu us很高！这种case不是一次两次。所以我经常和别人说，我是需要有问题场景才能排查出问题的，但多隆是完全有可能直接看代码就能看出问题的，这是本质的差距。</p><p>除了查问题外，更厉害的程序员是在写代码的过程就会很好的去避免问题。大家最容易理解的就是在写代码时处理各种异常情况，这里通常也是造成程序员们之间很大的差距的地方。</p><p>写一段正向逻辑的代码，大部分情况下即使有差距，也不会太大，但在怎么很好的处理这个过程中有可能出现的异常上，这个时候的功力差距会非常明显。很多时候一段代码里处理异常逻辑的部分都会超过正常逻辑的代码量。</p><p>我经常说，一个优秀程序员和普通程序员的差距，很多时候压根就不需要看什么满天飞的架构图，而只用show一小段的代码就可以。</p><p>举一个小case大家感受下。当年有一个严重故障，最后查出的原因是输入的参数里有一个是数组，把这个数组里的值作为参数去查数据库，结果前面输入了一个很大的数组，导致从数据库查了大量的数据，内存溢出了，很多程序员现在看都会明白对入参、出参的保护check，但类似这样的case我真的碰到了很多。</p><p>在中级这个阶段，我会推荐大家尽可能的多刻意的去培养下自己这两个方面的能力，成为一个能写出高质量代码、有效排查问题的优秀程序员。</p><p>3、编程能力高级：懂高级API和原理</p><p>就我自己的经历而言，我是在写了多年的Java代码后，才开始真正更细致的学习和掌握Java的一些更高级的API，我相信多数Java程序员也是如此。</p><p>我算是从2003年开始用Java写商业系统的代码，但直到在2007年加入淘宝后，才开始非常认真地学习Java的IO通信、并发这些部分的API。尽管以前也学过也写过一些这样的代码，但完全就是皮毛。当然，这些通常来说有很大部分的原因会是工作的相关性，多数的写业务系统的程序员可能基本就不需要用到这些，所以导致会很难懂这些相对高级一些的API，但这些API对真正的理解一门编程语言，我觉得至关重要。</p><p>在之前的程序员成长路线的文章里我也讲到了这个部分，在没有场景的情况下，只能靠自己去创造场景来学习好。我觉得只要有足够的兴趣，这个问题还是不大的，毕竟现在有各种开源，这些是可以非常好的帮助自己创造机会学习的，例如学Java NIO，可以自己基于NIO包一个框架，然后对比Netty，看看哪些写的是不如Netty的，这样会非常有助于真正的理解。</p><p>在学习高级API的过程中，以及排查问题的过程中，我自己越来越明白懂编程语言的运行原理是非常重要的，因此我到了后面的阶段开始学习Java的编译机制、内存管理、线程机制等。对于我这种非科班出身的而言，学这些会因为缺乏基础更难很多，但这些更原理性的东西学会了后，对自己的编程能力会有质的提升，包括以后学习其他编程语言的能力，学这些原理最好的方法我觉得是先看看一些讲相关知识的书，然后去翻看源码，这样才能真正的更好的掌握，最后是在以后写代码的过程中、查问题的过程中多结合掌握的原理，才能做到即使在N年后也不会忘。</p><p>在编程能力的成长上，我觉得没什么捷径。我非常赞同1万小时理论，在中级、高级阶段，如果有人指点或和优秀的程序员们共事，会好非常多。不过我觉得这个和读书也有点像，到了一定阶段后（例如高中），天分会成为最重要的分水岭，不过就和大部分行业一样，大部分的情况下都还没到拼天分的时候，只需要拼勤奋就好。</p><h4>系统设计能力的成长</h4><p>除了少数程序员会进入专深的领域，例如Linux Kernel、JVM，其他多数的程序员除了编程能力的成长外，也会越来越需要在系统设计能力上成长。</p><p>通常一个编程能力不错的程序员，在一定阶段后就会开始承担一个模块的工作，进而承担一个子系统、系统、跨多领域的更大系统等。</p><p>我自己在工作的第三年开始承担一个流程引擎的设计和实现工作，一个不算小的系统，并且也是当时那个项目里的核心部分。那个阶段我学会了一些系统设计的基本知识，例如需要想清楚整个系统的目标、模块的划分和职责、关键的对象设计等，而不是上来就开始写代码。但那个时候由于我是一个人写整个系统，所以其实对设计的感觉并还没有那么强力的感觉。</p><p>在那之后的几年也负责过一些系统，但总体感觉好像在系统设计上的成长没那么多，直到在阿里的经历，在系统设计上才有了越来越多的体会。（点击文末阅读原文，查看：我在系统设计上犯过的14个错，可以看到我走的一堆的弯路）。</p><p>在阿里有一次做分享，讲到我在系统设计能力方面的成长，主要是因为三段经历，负责专业领域系统的设计 -&gt; 负责跨专业领域的专业系统的设计 -&gt; 负责阿里电商系统架构级改造的设计。</p><p>第一段经历，是我负责HSF。HSF是一个从0开始打造的系统，它主要是作为支撑服务化的框架，是个非常专业领域的系统，放在整个淘宝电商的大系统来看，其实它就是一个很小的子系统，这段经历里让我最深刻的有三点：</p><p>1).要设计好这种非常专业领域的系统，专业的知识深度是非常重要的。我在最早设计HSF的几个框的时候，是没有设计好服务消费者/提供者要怎么和现有框架结合的，在设计负载均衡这个部分也反复了几次，这个主要是因为自己当时对这个领域掌握不深的原因造成的;</p><p>2). 太技术化。在HSF的阶段，出于情怀，在有一个版本里投入了非常大的精力去引进OSGi以及去做动态化，这个后来事实证明是个非常非常错误的决定，从这个点我才真正明白在设计系统时一定要想清楚目标，而目标很重要的是和公司发展阶段结合；</p><p>3). 可持续性。作为一个要在生产环境持续运行很多年的系统而言，怎么样让其在未来更可持续的发展，这个对设计阶段来说至关重要。这里最low的例子是最早设计HSF协议的时候，协议头里竟然没有版本号，导致后来升级都特别复杂；最典型的例子是HSF在早期缺乏了缺乏了服务Tracing这方面的设计，导致后面发现了这个地方非常重要后，全部落地花了长达几年的时间；又例如HSF早期缺乏Filter Chain的设计，导致很多扩展、定制化做起来非常不方便。</p><p>第二段经历，是做T4。T4是基于LXC的阿里的容器，它和HSF的不同是，它其实是一个跨多领域的系统，包括了单机上的容器引擎，容器管理系统，容器管理系统对外提供API，其他系统或用户通过这个来管理容器。这个系统发展过程也是各种犯错，犯错的主要原因也是因为领域掌握不深。在做T4的日子里，学会到的最重要的是怎么去设计这种跨多个专业领域的系统，怎么更好的划分模块的职责，设计交互逻辑，这段经历对我自己更为重要的意义是我有了做更大一些系统的架构的信心。</p><p>第三段经历，是做阿里电商的异地多活。这对我来说是真正的去做一个巨大系统的架构师，尽管我以前做HSF的时候参与了淘宝电商2.0-3.0的重大技术改造，但参与和自己主导是有很大区别的，这个架构改造涉及到了阿里电商众多不同专业领域的技术团队。在这个阶段，我学会的最主要的：</p><p>1). 子系统职责划分。在这种超大的技术方案中，很容易出现某些部分的职责重叠和冲突，这个时候怎么去划分子系统，就非常重要了。作为大架构师，这个时候要从团队的职责、团队的可持续性上去选择团队；</p><p>2). 大架构师最主要的职责是控制系统风险。对于这种超大系统，一定是多个专业领域的架构师和大架构师共同设计，怎么确保在执行的过程中对于系统而言最重要的风险能够被控制住，这是我真正的理解什么叫系统设计文档里设计原则的部分。</p><p>设计原则我自己觉得就是用来确保各个子系统在设计时都会遵循和考虑的，一定不能是虚的东西，例如在异地多活架构里，最重要的是如何控制数据风险，这个需要在原则里写上，最基本的原则是可接受系统不可用，但也要保障数据一致，而我看过更多的系统设计里设计原则只是写写的，或者千篇一律的，设计原则切实的体现了架构师对目标的理解（例如当时异地多活这个其实开始只是个概念，但做到什么程度才叫做到异地多活，这是需要解读的，也要确保在技术层面的设计上是达到了目标的），技术方案层面上的选择原则，并确保在细节的设计方案里有对于设计原则的承接以及执行；</p><p>3). 考虑问题的全面性。像异地多活这种大架构改造，涉及业务层面、各种基础技术层面、基础设施层面，对于执行节奏的决定要综合考虑人力投入、机器成本、基础设施布局诉求、稳定性控制等，这会比只是做一个小的系统的设计复杂非常多。</p><p>系统设计能力的成长，我自己觉得最重要的一是先在一两个技术领域做到专业，然后尽量扩大自己的知识广度。例如除了自己的代码部分外，还应该知道具体是怎么部署的，部署到哪去了，部署的环境具体是怎么样的，和整个系统的关系是什么样的。</p><p>像我自己，是在加入基础设施团队后才更加明白有些时候软件上做的一个决策，会导致基础设施上巨大的硬件、网络或机房的投入，但其实有可能只需要在软件上做些调整就可以避免，做做研发、做做运维可能是比较好的把知识广度扩大的方法。</p><p>第二点是练习自己做tradeoff的能力，这个比较难，做tradeoff这事需要综合各种因素做选择，但这也是所有的架构师最关键的，可以回头反思下自己在做各种系统设计时做出的tradeoff是什么。这个最好是亲身经历，听一些有经验的架构师分享他们选择背后的逻辑也会很有帮助，尤其是如果恰好你也在同样的挑战阶段，光听最终的架构结果其实大多数时候帮助有限。</p><p>技术Leader我觉得最好是能在架构师的基础上，后续注重成长的方面还是有挺大差别，就不在这篇里写了，后面再专门来写一篇。</p><h4>程序员金字塔</h4><p>我认为程序员的价值关键体现在作品上，被打上作品标签是一种很大的荣幸，作品影响程度的大小我觉得决定了金字塔的层次，所以我会这么去理解程序员的金字塔。</p><p>当然，要打造一款作品，仅有上面的两点能力是不够的，作品里很重要的一点是对业务、技术趋势的判断。</p><p>希望作为程序员的大伙，都能有机会打造一款世界级的作品，去为技术圈的发展做出贡献。</p><p>由于目前IT技术更新速度还是很快的，程序员这个行当是特别需要学习能力的。我一直认为，只有对程序员这个职业真正的充满兴趣，保持自驱，才有可能在这个职业上做好，否则的话是很容易淘汰的。</p><p>作者简介：</p><p>毕玄，2007年加入阿里，十多年来主要从事在软件基础设施领域，先后负责阿里的服务框架、Hbase、Sigma、异地多活等重大的基础技术产品和整体架构改造。</p><p><br><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', 44, '2019-06-07 02:52:45', '2019-06-07 02:52:45', 0),
(3, '烟雨江南，迷离了双眼，醉了心田！', '<p>内心里一直想有次远行，去江南，在烟花三月季，杨柳依依，小桥流水，坐一坐乌篷船，踩一踩青石板，弹首一帘幽梦，唱一曲烟花三月，人在画中行，美在眸中转，肯定如梦如幻，把心醉在了烟雨江南。尽管一直没成行，心里一直在执念着，向往着。。。</p><p>有人说，烟雨江南是春天，仿佛不会四季轮转；</p><p>有人说，江南烟雨是长梦，仿佛永远不会醒来。。。</p><p>这样迷人空濛的烟雨江南，经过文人墨客生花妙笔的点燃，会更加的令人心旌摇曳。</p><p>不信，你看！</p><p><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1689933670,3623052139&fm=173&amp;app=25&amp;f=JPEG?w=426&amp;h=620&amp;s=151B1BDFC66274AE54B8347303008073"></p><p>《望江南·超然台作》</p><p>宋代：苏轼</p><p>春未老，</p><p>风细柳斜斜。</p><p>试上超然台上看，</p><p>半壕春水一城花。</p><p>烟雨暗千家。</p><p>春暮时节，微风细细，柳枝斜斜随之起舞。欣然登上亭台远远眺望，满城风光，尽收眼底。春水微微闪动，城内是缤纷竞放的春花，不远处，烟雨笼罩着千家万户。</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=975487344,3587250726&amp;fm=173&amp;app=25&amp;f=JPEG?w=399&amp;h=544&amp;s=BDC7A444ECFE561F8CB46C1401001092"></p><p>《忆江南》</p><p>唐代：白居易</p><p>江南好，风景旧曾谙。</p><p>日出江花红胜火，春来江水绿如蓝。</p><p>能不忆江南？</p><p>江南景色，生机盎然，色彩艳丽。春水荡漾，碧波千里，诗人夸张地形容它比蓝草还要绿，这深浓的碧绿色，与上句日映江花的火红色相映发，便觉更加绚丽夺目。江南春色的迷人之态，如何“能不忆江南！”</p><p><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1609297381,2081420592&amp;fm=173&amp;app=25&amp;f=JPEG?w=440&amp;h=640&amp;s=E7BA33C748734F8EBC8C98700300C061"></p><p>《江南春》</p><p>唐代：杜牧</p><p>千里莺啼绿映红，水村山郭酒旗风。</p><p>南朝四百八十寺，多少楼台烟雨中。</p><p>干里江南，到处莺歌燕舞，有相互映衬的绿树红花，有临水的村庄，有依山的城郭，到处都有迎风招展的酒旗。昔日到处是香烟缭绕的深邃的寺庙，如今亭台楼阁都沧桑矗立在朦胧的烟雨之中。细雨蒙蒙，如烟如雾。江南春景如此丰富多彩，如此这般的深邃迷离！</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2485415031,1553047305&amp;fm=173&amp;app=25&amp;f=JPEG?w=386&amp;h=580&amp;s=A0D21CCBD402735511B1C4120300C093"></p><p>《菩萨蛮·人人尽说江南好》</p><p>唐代：韦庄</p><p>人人尽说江南好，</p><p>游人只合江南老。</p><p>春水碧于天，画船听雨眠。</p><p>垆边人似月，皓腕凝霜雪。</p><p>未老莫还乡，还乡须断肠。</p><p>江南之美，甲于天下。“人人尽说江南好。游人只合江南老。”写得多美！碧绿的春水，比天空还要明净，躺在游船画舫之中，和着雨声入睡，又是何等之美，何等之空灵！</p><p><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1915314739,3427076074&amp;fm=173&amp;app=25&amp;f=JPEG?w=267&amp;h=400&amp;s=12B55184DE72178C708B8190030090BB"></p><p>《江南逢李龟年》</p><p>唐代：杜甫</p><p>岐王宅里寻常见，崔九堂前几度闻。</p><p>正是江南好风景，落花时节又逢君。</p><p>“正是江南好风景，落花时节又逢君。”风景秀丽的江南，是诗人们所向往的作快意之游的所在。烟花两茫茫，海阔山遥，一位老歌唱家与一位老诗人在飘流颠沛中重逢了，落花流水的风光，点缀着两位憔悴的老人，交织成时代沧桑的一幅典型画图，呈现出一种幽美深邃的意境。</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3749940555,2227847233&amp;fm=173&amp;app=25&amp;f=JPEG?w=350&amp;h=500&amp;s=D5BAAF77CE66761F9466DD6803006039"></p><p>《梦江南·兰烬落》</p><p>唐代：皇甫松</p><p>兰烬落，屏上暗红蕉。</p><p>闲梦江南梅熟日，</p><p>夜船吹笛雨萧萧。</p><p>人语驿边桥。</p><p>尽管更深烛尽，烛光暗淡，但梦中的江南，依然情调清朗，色彩明丽，梅子正熟，风景绝佳。夜雨轻飘，船泊泽国，笛声悠扬；人语驿桥，春水碧波。现实的夜是如此凄清、冷寂；而梦中江南的夜，却是那样欢乐、愉快、醉人！</p><p><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3418726172,3736877808&amp;fm=173&amp;app=25&amp;f=JPEG?w=387&amp;h=580&amp;s=E4F070D84C5807CE4A3C7E5B0300E0F6"></p><p>《望江南》</p><p>唐·李煜</p><p>闲梦远，南国正芳春。</p><p>船上管弦江面渌，</p><p>满城飞絮辊轻尘。</p><p>忙杀看花人！</p><p>闲梦悠远，南国春光正好。船上管弦声不绝于耳，江水一片碧绿，满城柳絮纷飞，淡淡尘烟滚滚，忙坏了看花的人们。</p><p><img src="https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1559479673,3805916339&amp;fm=173&amp;app=25&amp;f=JPEG?w=394&amp;h=615&amp;s=AC9220D45B4146CC08987C420300D0F6"></p><p>《江南春·波渺渺》</p><p>宋代：寇准</p><p>波渺渺，柳依依。</p><p>孤村芳草远，斜日杏花飞。</p><p>江南春尽离肠断，苹满汀洲人未归。</p><p>起首四句勾勒出一幅江南暮春图景：一泓春水，烟波渺渺，垂柳依依，芳草萋萋蔓延至天际。夕阳映照下，孤零零的村落孤寂无人，只见纷纷凋谢的杏花飘飞满地。</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4238104146,4160492226&amp;fm=173&amp;app=25&amp;f=JPEG?w=365&amp;h=529&amp;s=57A69641135F4DDEC61C095D0300D0A2"></p><p>《蝶恋花·梦入江南烟水路》</p><p>宋代：晏几道</p><p>梦入江南烟水路，行尽江南，不与离人遇。</p><p>睡里消魂无说处，觉来惆怅消魂误。</p><p>欲尽此情书尺素，浮雁沉鱼，终了无凭据。</p><p>却倚缓弦歌别绪，断肠移破秦筝柱。</p><p>梦中的江南，烟雨迷离，古往今来，有多少文人墨客沉醉在这如画的景色中，他们都是做着一个朦胧的“江南梦”。江南的美，像一杯绿茶自燃清新，像一段丝绸，绚丽光洁，像一幅画卷，含蓄深蕴。。。</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1799789883,115789566&amp;fm=173&amp;app=25&amp;f=JPEG?w=440&amp;h=566&amp;s=797A6EDAD812C0DE08B4E75A03006057"></p><p>很想撑一把油纸伞，漫步在江南的雨镇，寻一份澄澈，求一段阑珊；</p><p>很想在一场江南烟雨中，遇一段唯美的邂逅，让烟雨深处的情怀，触动心房；</p><p>很想在一场盛世烟雨中，来一场烟雨约定，任岁缓缓流淌，温柔岁月，惊艳时光。</p><p>很想醉卧烟雨江南，一梦千年！</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1237474458,869692607&amp;fm=173&amp;app=25&amp;f=JPEG?w=640&amp;h=426&amp;s=94F0EE214E04444F428934D201008090"></p><p><br></p>', 44, '2019-06-07 07:11:20', '2019-06-07 07:11:20', 0),
(4, '徐志摩的再别康桥是写给谁？原来是她', '<p>“轻轻的我走了，正如我轻轻的来，我轻轻地招手，作别西边的云彩”徐志摩的再别康桥相信许多人都读过，这首诗虽然简短，但读完后能感受到作者对某一东西的怀念，徐志摩在怀念谁呢！</p><p><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3612136263,1837275600&fm=173&amp;app=25&amp;f=JPEG?w=220&amp;h=142&amp;s=BD0A0FD390B13F84EE38C8300300C0D3"></p><p>有这么几种说法，第一种是说，1928年，徐志摩到英国去拜访朋友，但是朋友都不在，一个也没拜访到，孤独地在异地，在途经康桥，看到熟悉的情境，心里感慨万分，熟悉的朋友不在，只有这康桥在等我，所以写下这首诗。而第二种说法是说写给陆小曼的，因为他当时和陆小曼结婚，离家在外，怀念家中妻子，所以写下了这首诗，但小编觉得这个说法不靠谱，因为这首诗表达了徐志摩怀念英国的事情，写的也是关于在英国的东西，英国时的徐志摩还未与陆小曼相识，这其中和陆小曼有关？小编实在看不出来。还有一种说法是说这首诗是写给林徽因的，因为徐志摩是林徽因父亲林长民的弟子，所以在1920年在林徽因的父亲的引进下认识林徽因，因为徐志摩俊朗的外表，渊博的学识，先进的思想，两人迅速就成了好朋友，而林徽因俏丽的外表，幽默活泼的性格，也让徐志摩怦然心动，在英国那期间，徐志摩教林徽因写诗，两人经常相约游玩，度过一段快乐时光。而这首就是怀念那段美好时光的。小编认同最后一种说法，原因且听我细细讲来。</p><p><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2728597306,1550620375&amp;fm=173&amp;app=25&amp;f=JPEG?w=156&amp;h=220&amp;s=6CCA7A236483A4B4BB1414CA0100A0B1"><img src="https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1288468899,292670315&amp;fm=173&amp;app=25&amp;f=JPEG?w=382&amp;h=471&amp;s=0ACA7A23F0E35AB42E08C8B70100A0E1"></p><p>徐志摩写这首诗的时候是在1928年秋季，这一年还有什么事情发生？在这一年春季是林徽因和梁思成结婚的日子，苦苦追求的女子要和别人结婚，徐志摩当时的心里甭提是多难受了。秋季游览欧洲时，熟悉的康桥勾起了这位敏感诗人心里那段一直珍藏的美好记忆，一片片场景在眼前浮现，24岁的徐志摩与18岁的林徽因初识的场景，他们在一起作诗的场景，一起游玩外出.....但美好记忆里的女主角已经成了别人的妻子，不再属于他，属于他的只有段和她有关的记忆，怎么不叫人心生感慨！</p><p>但有人会说徐志摩无论是对林徽因还有陆小曼都是浓烈的感情，而这首是却流露出的情感是淡淡的。或许是当时徐志摩也有佳人在旁，对于林徽因的结婚，虽有万般不舍，但也无可奈何，释然了。</p><p><img src="https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=848539033,3019783666&amp;fm=173&amp;app=25&amp;f=JPEG?w=268&amp;h=373&amp;s=A9C272230E50A18CAC1CC4DE0100C090"></p><p>其实写给谁已经无法落实，每个人想法不一样，理解这首诗也不一样，你们是怎么想的呢，欢迎在下面留言，咱们一起交流</p><p><br></p>', 44, '2019-06-07 07:13:54', '2019-06-07 07:13:54', 0),
(7, 'http://localhost/posts/6', '<p><a href="http://localhost/posts/6" target="_blank">http://localhost/posts/6</a><a href="http://localhost/posts/6" target="_blank" style="background-color: rgb(255, 255, 255);">http://localhost/posts/6</a><a href="http://localhost/posts/6" target="_blank" style="background-color: rgb(255, 255, 255);">http://localhost/posts/6</a></p><p><a href="http://localhost/posts/6" target="_blank">http://localhost/posts/6</a></p><p><a href="http://localhost/posts/6" target="_blank">http://localhost/posts/6</a></p><p><a href="http://localhost/posts/6" target="_blank">http://localhost/posts/6</a><a href="http://localhost/posts/6" target="_blank" style="background-color: rgb(255, 255, 255);">http://localhost/posts/6</a><a href="http://localhost/posts/6" target="_blank" style="background-color: rgb(255, 255, 255);">http://localhost/posts/6</a></p><p><a href="http://localhost/posts/6" target="_blank">http://localhost/posts/6</a></p><p><br></p>', 44, '2019-06-07 12:47:07', '2019-06-09 02:31:29', -1);

-- --------------------------------------------------------

--
-- 表的结构 `post_topics`
--

CREATE TABLE `post_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `post_topics`
--

INSERT INTO `post_topics` (`id`, `post_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2019-06-07 12:51:28', '2019-06-07 12:51:28'),
(2, 4, 2, '2019-06-07 12:51:45', '2019-06-07 12:51:45'),
(3, 7, 2, '2019-06-07 12:51:45', '2019-06-07 12:51:45'),
(4, 1, 3, '2019-06-07 12:52:11', '2019-06-07 12:52:11');

-- --------------------------------------------------------

--
-- 表的结构 `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `topics`
--

INSERT INTO `topics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '旅游', '2019-05-28 15:21:53', '2019-05-28 15:21:55'),
(2, '电影', '2019-06-07 07:08:18', '2019-06-07 07:08:19'),
(3, '生活', '2019-06-07 07:08:33', '2019-06-07 07:08:35');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(44, 'test2', 'test2@gmail.com', '$2y$10$E9b04xdmtLUbiiM1B6XjJeZO38Y.0Rvm/gCmYoKhSaddpXCYPJFkO', '4YGEhL1tBAQZHpntUQd6Oc3RKwDePdXULO6Z2Kf8aIttKYo2pPXIDvrdjHXb', '2019-03-23 17:51:35', '2019-06-07 06:41:30', '/storage/5089348013e4d1199005d62b590f3801/tAvdGi6SchRQqmabyEPGpcnNJfDFZy6vDtaPQQAB.jpeg'),
(45, 'zmflfh', 'zmf@gmail.com', '$2y$10$Irtx4TB87FRUKr.7LlJi8.QiepYTm0uDmylALQXaBxhZKvHI0arAi', NULL, '2019-06-07 12:49:08', '2019-06-07 12:49:08', '');

-- --------------------------------------------------------

--
-- 表的结构 `user_notice`
--

CREATE TABLE `user_notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `notice_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_notice`
--

INSERT INTO `user_notice` (`id`, `user_id`, `notice_id`, `created_at`, `updated_at`) VALUES
(1, 44, 1, NULL, NULL),
(2, 44, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `zans`
--

CREATE TABLE `zans` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `zans`
--

INSERT INTO `zans` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 44, '2019-06-07 02:56:45', '2019-06-07 02:56:45'),
(2, 5, 44, '2019-06-07 07:52:41', '2019-06-07 07:52:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permission_role`
--
ALTER TABLE `admin_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role_user`
--
ALTER TABLE `admin_role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fans`
--
ALTER TABLE `fans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_topics`
--
ALTER TABLE `post_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notice`
--
ALTER TABLE `user_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zans`
--
ALTER TABLE `zans`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `admin_permission_role`
--
ALTER TABLE `admin_permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `admin_role_user`
--
ALTER TABLE `admin_role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `fans`
--
ALTER TABLE `fans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `post_topics`
--
ALTER TABLE `post_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- 使用表AUTO_INCREMENT `user_notice`
--
ALTER TABLE `user_notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `zans`
--
ALTER TABLE `zans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
