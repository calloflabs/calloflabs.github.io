-- 졸업의 탑 랭킹 테이블 (Supabase 프로젝트 lyqmcergsilvrohgzdpn · SQL Editor에 붙여넣고 Run)
create table if not exists public.tog_scores (
  id          bigint generated always as identity primary key,
  name        text    not null check (char_length(name) between 1 and 10),
  score       integer not null check (score >= 0),
  floor       integer not null check (floor >= 1),
  data        integer not null default 0,
  papers      integer not null default 0,
  created_at  timestamptz not null default now()
);
create index if not exists tog_scores_rank on public.tog_scores (score desc, floor desc);

alter table public.tog_scores enable row level security;
drop policy if exists "anon read tog"   on public.tog_scores;
drop policy if exists "anon insert tog" on public.tog_scores;
create policy "anon read tog"   on public.tog_scores for select to anon using (true);
create policy "anon insert tog" on public.tog_scores for insert to anon with check (true);
