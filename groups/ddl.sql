CREATE TABLE groups
(
    [user_id] [int] NOT NULL FOREIGN KEY REFERENCES users([id]),
    [username] [varchar](20) NULL,
    [first_name] [varchar](20) NOT NULL,
    [last_name] [varchar](20) NOT NULL,
    [group] [tinyint] NOT NULL,
    [date] [date] NOT NULL,
    CONSTRAINT [PK_groups] PRIMARY KEY CLUSTERED
    (
        [user_id] ASC,
        [group] ASC,
        [date] ASC
    )
)
