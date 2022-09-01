import { useBackend } from '../backend';
import { Box, Button, Flex, Icon, LabeledList, NoticeBox, ProgressBar, Section } from '../components';
import { NtosWindow } from '../layouts';

export const NtosNetDownloader = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    disk_size,
    disk_used,
    downloadable_programs = [],
    error,
    hacked_programs = [],
    hackedavailable,
  } = data;
  return (
    <NtosWindow
      width={480}
      height={735}>
      <NtosWindow.Content scrollable>
        {!!error && (
          <NoticeBox>
            <Box mb={1}>
              {error}
            </Box>
            <Button
              content="Reset"
              onClick={() => act('PRG_reseterror')} />
          </NoticeBox>
        )}
        <Section>
          <LabeledList>
            <LabeledList.Item label="Disk usage">
              <ProgressBar
                value={disk_used}
                minValue={0}
                maxValue={disk_size}>
                {`${disk_used} GQ / ${disk_size} GQ`}
              </ProgressBar>
            </LabeledList.Item>
          </LabeledList>
        </Section>
        <Section>
          {downloadable_programs.map(program => (
            <Program
              key={program.filename}
              program={program} />
          ))}
        </Section>
        {!!hackedavailable && (
          <Section title="UNKNOWN Software Repository">
            <NoticeBox mb={1}>
              Please note that Nanotrasen does not recommend download
              of software from non-official servers.
            </NoticeBox>
            {hacked_programs.map(program => (
              <Program
                key={program.filename}
                program={program} />
            ))}
          </Section>
        )}
      </NtosWindow.Content>
    </NtosWindow>
  );
};

const Program = (props, context) => {
  const { program } = props;
  const { act, data } = useBackend(context);
  const {
    disk_size,
    disk_used,
    downloadcompletion,
    downloading,
    downloadname,
<<<<<<< HEAD
    downloadsize,
=======
    downloadcompletion,
    emagged,
    id_inserted,
>>>>>>> e561c55e4b... ModPC Update V2 (#7551)
  } = data;
  const disk_free = disk_size - disk_used;
  return (
    <Box mb={3}>
      <Flex align="baseline">
        <Flex.Item bold grow={1}>
          {program.filedesc}
        </Flex.Item>
        <Flex.Item color="label" nowrap>
          {program.size} GQ
        </Flex.Item>
        <Flex.Item ml={2} width="94px" textAlign="center">
          {program.filename === downloadname && (
            <ProgressBar
              color="green"
              minValue={0}
              maxValue={downloadsize}
              value={downloadcompletion} />
          ) || (
<<<<<<< HEAD
            <Button
              fluid
              icon="download"
              content="Download"
              disabled={downloading || program.size > disk_free}
              onClick={() => act('PRG_downloadfile', {
                filename: program.filename,
              })} />
=======
            (!program.installed
              && program.compatible
              && program.access
              && program.size < disk_free) && (
              <Button
                bold
                icon="download"
                content="Download"
                disabled={downloading}
                tooltipPosition="left"
                tooltip={!!downloading && ('Awaiting download completion...')}
                onClick={() => act('PRG_downloadfile', {
                  filename: program.filename,
                })} />
            ) || (
              <Button
                bold
                icon={program.installed ? 'check' : 'times'}
                color={
                  program.installed ? 'good'
                    : !program.compatible ? 'bad' : null
                }
                disabled={!program.installed && program.compatible}
                content={
                  program.installed ? 'Installed'
                    : !program.compatible ? 'Incompatible'
                      : !program.access ? (id_inserted ? 'No Access' : "Insert ID") : 'No Space'
                } />
            )
>>>>>>> e561c55e4b... ModPC Update V2 (#7551)
          )}
        </Flex.Item>
      </Flex>
      {program.compatibility !== 'Compatible' && (
        <Box mt={1} italic fontSize="12px" position="relative">
          <Icon mx={1} color="red" name="times" />
          Incompatible!
        </Box>
      )}
      {program.size > disk_free && (
        <Box mt={1} italic fontSize="12px" position="relative">
          <Icon mx={1} color="red" name="times" />
          Not enough disk space!
        </Box>
      )}
      <Box mt={1} italic color="label" fontSize="12px">
        {program.fileinfo}
      </Box>
    </Box>
  );
};
