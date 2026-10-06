-- 초록 제출하러 가는 길 랭킹 테이블 (Supabase 프로젝트 lyqmcergsilvrohgzdpn · SQL Editor에 붙여넣고 Run)
create table if not exists public.rts_scores (
  id          bigint generated always as identity primary key,
  name        text    not null check (char_length(name) between 1 and 10),
  score       integer not null check (score >= 0),
  result      text    not null check (result in ('win','hit','train','time')),
  lanes       integer not null default 0,
  time_left   numeric(5,1) not null default 0,
  near_misses integer not null default 0,
  created_at  timestamptz not null default now()
);
create index if not exists rts_scores_rank on public.rts_scores (score desc, time_left desc);

alter table public.rts_scores enable row level security;
drop policy if exists "anon read rts"   on public.rts_scores;
drop policy if exists "anon insert rts" on public.rts_scores;
create policy "anon read rts"   on public.rts_scores for select to anon using (true);
create policy "anon insert rts" on public.rts_scores for insert to anon with check (true);
