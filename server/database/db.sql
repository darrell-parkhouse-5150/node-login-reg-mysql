create database `log_reg_2024`;
use `log_reg_2024`;

create table `users` (
    `u_id` int(11) unsigned NOT NULL,
    `u_name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `profile_pic` varchar(255) NOT NULL
);


alter table users
    add column `u_id` int(11) primary key auto_increment first;


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
    `title` varchar(255) not null,
    `description` text not null,
    `assigned_to` varchar(255) not null,
    `due_date` datetime,
    `priority` enum('low', 'medium', 'moderate', 'high') default 'medium',
    `task_status` enum('in-progress', 'complete', 'pending', 'aborted'),
    `modifed_date` datetime,
    `created_at` datetime default current_timestamp
)