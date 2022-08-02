import { Link, useLoaderData } from "@remix-run/react";
import { getDocs } from "~/api.server";

export function loader() {
  return getDocs()
    .sort(
      (a, b) =>
        ((a.attributes as any)?.order || Number.MAX_SAFE_INTEGER) -
        ((b.attributes as any)?.order || Number.MAX_SAFE_INTEGER)
    )
    .map((doc) => ({ ...doc.attributes, slug: doc.slug }));
}

export function getStaticPaths() {
  return ["/"];
}

export default function Index() {
  const docs = useLoaderData<typeof loader>();

  return (
    <div style={{ fontFamily: "system-ui, sans-serif", lineHeight: "1.4" }}>
      <h1>Welcome to Remix</h1>

      <ul>
        {docs.map((doc) => (
          <li key={doc.slug}>
            <Link to={`/post/${doc.slug}`}>15m Quickstart Blog Tutorial</Link>
          </li>
        ))}
      </ul>
    </div>
  );
}
