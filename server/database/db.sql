create table `users` (
    `u_id` int(11) unsigned NOT NULL,
    `u_name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `profile_pic` varchar(255) NOT NULL
);


create table `notifications` (
    `notify_id` int(11) primary key AUTO_INCREMENT NOT NULL,
    `notified_by` int(11) not null,
    `type` varchar(255) not null,
    `notify_to` int(11) not null,
    `post_id` int(11) not null,
    `time` timestamp not null,
    `status` enum ('read', 'unread') default 'unread',
    `msg` text
);

create table `tasks` (
    `task_id` int(11) primary key auto_increment,
)