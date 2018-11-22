create index "NoticeLog_accounting_fkey" on billing."NoticeLog" (
  accounting
);
create index "NoticeLog_notice_type_fkey" on billing."NoticeLog" (
  notice_type
);
create index "NoticeLog_transid_fkey" on billing."NoticeLog" (
  transid
);
