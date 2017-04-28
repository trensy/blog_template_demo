--
-- 表的结构 `b_arc`
--

CREATE TABLE `b_arc` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `view_number` int(11) NOT NULL,
  `reply_number` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章主表';

-- --------------------------------------------------------

--
-- 表的结构 `b_arc_group`
--

CREATE TABLE `b_arc_group` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章组';

-- --------------------------------------------------------

--
-- 表的结构 `b_arc_sub`
--

CREATE TABLE `b_arc_sub` (
  `id` int(11) NOT NULL,
  `arc_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章副表';

-- --------------------------------------------------------

--
-- 表的结构 `b_arc_tag`
--

CREATE TABLE `b_arc_tag` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签表';

-- --------------------------------------------------------

--
-- 表的结构 `b_arc_tag_rel`
--

CREATE TABLE `b_arc_tag_rel` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `arc_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

-- --------------------------------------------------------

--
-- 表的结构 `b_comment`
--

CREATE TABLE `b_comment` (
  `id` int(11) NOT NULL,
  `arc_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论';

-- --------------------------------------------------------

--
-- 表的结构 `b_options`
--

CREATE TABLE `b_options` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `options_key` varchar(50) NOT NULL,
  `options_value` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置主表';

--
-- 转存表中的数据 `b_options`
--

INSERT INTO `b_options` (`id`, `group_id`, `options_key`, `options_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'site_name', 'xx博客', '2017-04-27 16:00:00', '2017-04-27 16:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `b_option_group`
--

CREATE TABLE `b_option_group` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `group_key` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置组表';

--
-- 转存表中的数据 `b_option_group`
--

INSERT INTO `b_option_group` (`id`, `fname`, `group_key`, `created_at`, `updated_at`) VALUES
(1, '系统设置', 'system', '2017-04-27 16:00:00', '2017-04-27 16:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `b_user`
--

CREATE TABLE `b_user` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `displayName` varchar(50) NOT NULL,
  `passwd` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_arc`
--
ALTER TABLE `b_arc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_arc_group`
--
ALTER TABLE `b_arc_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_arc_sub`
--
ALTER TABLE `b_arc_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_arc_tag`
--
ALTER TABLE `b_arc_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_arc_tag_rel`
--
ALTER TABLE `b_arc_tag_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arc_id` (`arc_id`);

--
-- Indexes for table `b_comment`
--
ALTER TABLE `b_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_options`
--
ALTER TABLE `b_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `b_option_group`
--
ALTER TABLE `b_option_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_user`
--
ALTER TABLE `b_user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `b_arc`
--
ALTER TABLE `b_arc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `b_arc_group`
--
ALTER TABLE `b_arc_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `b_arc_sub`
--
ALTER TABLE `b_arc_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `b_arc_tag`
--
ALTER TABLE `b_arc_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `b_arc_tag_rel`
--
ALTER TABLE `b_arc_tag_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `b_comment`
--
ALTER TABLE `b_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `b_options`
--
ALTER TABLE `b_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `b_option_group`
--
ALTER TABLE `b_option_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `b_user`
--
ALTER TABLE `b_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;