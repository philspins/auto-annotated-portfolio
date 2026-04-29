import * as React from 'react';

import { DynamicComponent } from '@/components/components-registry';
import ProjectFeedSection from '@/components/sections/ProjectFeedSection';
import { PageComponentProps, ProjectFeedLayout, ProjectLayout } from '@/types';
import BaseLayout from '../BaseLayout';

type ComponentProps = PageComponentProps & ProjectFeedLayout & { items: ProjectLayout[] };

const PAGE_SIZE = 5;

const Component: React.FC<ComponentProps> = (props) => {
    const { topSections = [], bottomSections = [], items = [], projectFeed } = props;
    const [page, setPage] = React.useState(1);

    const totalPages = Math.ceil(items.length / PAGE_SIZE);
    const pageItems = items.slice((page - 1) * PAGE_SIZE, page * PAGE_SIZE);

    return (
        <BaseLayout {...props}>
            {topSections?.map((section, index) => {
                return <DynamicComponent key={index} {...section} />;
            })}
            <ProjectFeedSection {...projectFeed} projects={pageItems} />
            {totalPages > 1 && (
                <div className="flex items-center justify-center gap-4 pb-16">
                    <button
                        onClick={() => setPage((p) => p - 1)}
                        disabled={page === 1}
                        className="px-5 py-2 border-2 border-current rounded-full text-lg transition disabled:opacity-30 hover:enabled:-translate-y-1 hover:enabled:shadow-lg"
                    >
                        ← Prev
                    </button>
                    <span className="text-lg">
                        {page} / {totalPages}
                    </span>
                    <button
                        onClick={() => setPage((p) => p + 1)}
                        disabled={page === totalPages}
                        className="px-5 py-2 border-2 border-current rounded-full text-lg transition disabled:opacity-30 hover:enabled:-translate-y-1 hover:enabled:shadow-lg"
                    >
                        Next →
                    </button>
                </div>
            )}
            {bottomSections?.map((section, index) => {
                return <DynamicComponent key={index} {...section} />;
            })}
        </BaseLayout>
    );
};
export default Component;
