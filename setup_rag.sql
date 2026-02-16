/*
 * 🚀 مشروع: بناء نظام RAG باستخدام n8n و Supabase (الجزء 1)
 * 📝 الوصف: كود SQL لإنشاء جدول الـ Vectors ودالة البحث المتوافقة مع LangChain.
 * 🤖 تم التصميم والتطوير بواسطة: يوسف الشربيني (بمساعدة Gemini AI).
 * 🌐 للتواصل والمزيد من الشروحات: https://yousefautomates.pages.dev
 *
 * ⚠️ ملاحظة هامة: تأكد أن Dimension الموديل المستخدم في n8n هو 1024.
 */

-- 1. تفعيل مكتبة الـ Vectors (عشان قاعدة البيانات تفهم تخزين واسترجاع الـ AI Embeddings)
create extension if not exists vector;

-- 2. إنشاء جدول المستندات (مجهز لاستقبال Embedding بحجم 1024)
create table if not exists documents (
  id bigserial primary key,
  content text,
  metadata jsonb,
  embedding vector(1024)  -- ⚠️ رقم 1024 ده هو الـ "Dimension" الخاص بالموديل اللي اخترته في Hugging Face
);

-- 3. دالة البحث (Match Documents Function)
-- النسخة المحسنة والمتوافقة تماماً مع عقدة (Supabase Vector Store) في n8n
create or replace function match_documents (
  query_embedding vector(1024), -- لازم يكون نفس حجم الـ Vector فوق (1024)
  match_count int default null,
  filter jsonb default '{}'
) returns table (
  id bigint,
  content text,
  metadata jsonb,
  similarity float
)
language plpgsql
as $$
#variable_conflict use_column
begin
  return query
  select
    id,
    content,
    metadata,
    1 - (documents.embedding <=> query_embedding) as similarity
  from documents
  where metadata @> filter -- هنا السر: بنفلتر حسب الـ Metadata لو مطلوبة (عشان n8n ميعملش Error)
  order by documents.embedding <=> query_embedding
  limit match_count;
end;
$$;
